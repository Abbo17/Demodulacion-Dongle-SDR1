function y = loadFile(filename)
% y = loadFile('nombrearchivo')
%
% Lee el archivo generado por rtl_sdr.exe y entrega un vector
% complejo (I y Q)
fid = fopen(filename,'rb');
y = fread(fid,'uint8=>double');
y = y-127;
y = y(1:2:end) + i*y(2:2:end);
end