function []= mat2coe(x, filename)
% This function takes a vector as an argument and writes the equivalent in a coe file

mpath = mfilename();

if nargin < 3
   hex = false;
end

fid = fopen(filename, 'wt');
fprintf(fid, 'memory_initialization_radix=10;\n');
fprintf(fid, ['memory_initialization_vector=\n']);

for i = 1:length(x), 
  if i == length(x)
	 fprintf(fid, '%d;\n', x(i)); % No comma for last one
  else
	 fprintf(fid, '%d,\n', x(i));
  end
end

fprintf(fid, '\n');    
fclose(fid);