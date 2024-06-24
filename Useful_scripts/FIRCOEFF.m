clear;
%Encuentra los coeficientes de un filtro FIR, a partir de la respuesta al
%impulso dada
% Tomado a partir de codigo generado por ChatGPT.
[h, Fs] = audioread("IR\rir_jack_lyons_chan3_44k.wav");    % Room Impulse Response.

% Paso 1: Convertir el filtro ideal a un filtro FIR Causl utilizando la
% transformada inversa de Fourier. (Omitido)
b = (h);
% Paso 2: Truncar los coeficientes del filtro a una longitud finita. En
% este caso 10,000 coeficientes bastaran para tener un resultado bastante
% aproximado. 
M = (1024*10);          % number of filter coefficients ( 10k Coeffs)
b = b(1:M);
% Paso 3: Applicar una ventana para incrementar el rendimiento del filtro
w = hamming(M);         % Hamming window
b = b .* w;
% Paso 4: Normalizar los coeficientes del filtro.
b = (b / norm(b)) * 1.0  ;  
% Paso 5: Graficar su respuesta en frecuencia. 
freqz(b, 1);
% Paso 6: Guardamos los coeficientes como un archivo listo para leerse en
% el FIR II Builder de Quartus.


% Paso 6.1: Abrimos archivo
file = fopen('FIR_COEFF','w'); 
%Encabezado de formato
fprintf(file, '# banks: 1\n'); 
fprintf(file, '# coeffs: %d\n', M);

% Paso 6.2: Abrimos archivoImprimir cada coeficiente separado por una  coma " , "
for i = 0 : M-1
    fprintf(file, '%f,', (b(i+1)));
end

% Paso 6.3: Guardar una demo del filtro utilizando el siguiente clip de audio
[input,fs] = audioread("audios\masterofpuppets-clean.wav");

% Paso 6.4: Aplicamos funcion filter utilizando el clip de audio y el filtro.
output = filter(b,1,input);

% Paso 6.5: Escribimos en el archivo de salida. 
audiowrite('Test-RIR2.wav',output,fs);





