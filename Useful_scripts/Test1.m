clear;
[RIR, fs] = audioread("r1_omni-short.wav");
[audio, fs2] = audioread("literary girl-mono.wav");


%Grafica de las señales de entrada:

t = [1:length(RIR)]/fs;
subplot(3,1,1);
plot(t, RIR);

xlabel('tiempo')
ylabel('amplitud')
title('RIR')

t1 = [1:length(audio)]/fs2;

subplot(3,1,2)
plot(t1,audio)



xlabel('tiempo')
ylabel('amplitud')
title('Audio entrada')

W = conv(audio, RIR);

t2 = [1:length(W)]/fs2;
subplot(3,1,3)
plot(t2, W)

xlabel('tiempo')
ylabel('amplitud')
title('Salida de convolucion')


%Graficas de las respuestas en frecuencia:
figure(2);
freqz(RIR);
title('Respuesta en Frecuencia - Archivo Real')


b = RIR;
% Step 4: Truncate the filter coefficients to a finite length
M = 512;                 % number of filter coefficients
b = b(1:M);
% Step 5: Apply windowing to improve the filter performance
w = hamming(M);         % Hamming window
b = b .* w;
% Normalize the filter coefficients
%b = b / sum(b);
% Plot the frequency response
figure(3);
freqz(b, 1);
title('Respuesta en Frecuencia - Coeficientes Calculados')

output = conv(audio,b);
audiowrite('test.wav',output,fs2);


