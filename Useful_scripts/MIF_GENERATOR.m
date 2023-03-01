% CODIGO DE STACKOVERFLOW:
% Paul_sysu, (2015, April 25). Extracting Memory Initialization File (MIF)
% from a BMP photo. StackOverflow. https://stackoverflow.com/a/29865485


%mcode to create a mif file
    [src,Fs] = audioread('SINE.wav');
   
    N = size(src); %your ram or rom depth。
    word_len = 32; 
    data = src;% reshape you picture's data

    fid=fopen('audio_data.mif', 'w'); % open mif file 
    fprintf(fid, 'DEPTH=%d;\n', N);
    fprintf(fid, 'WIDTH=%d;\n', word_len);

    fprintf(fid, 'ADDRESS_RADIX = UNS;\n'); 
    fprintf(fid, 'DATA_RADIX = HEX;\n'); 
    fprintf(fid, 'CONTENT\t');
    fprintf(fid, 'BEGIN\n');
    for i = 0 : N-1
    fprintf(fid, '\t%d\t:\t%x;\n',i, data(i+1));
    end
    fprintf(fid, 'END;\n'); % prinf the end
    fclose(fid); % close your file
    
    


