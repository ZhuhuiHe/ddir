%clear all;
%txt = 'lfw_label.txt';
function [] = remove_label( inputxt ,outputtxt)
%ȥ������label��txt
%   txt = 'lfw_label.txt';��label��list
%   outputtxt = 'lfw.txt' �������label��list
name_label =importdata(inputxt);
fid=fopen(outputtxt,'w');
m = size(name_label.textdata);
for i=1:m(1)
    fprintf(fid,'%s\n',name_label.textdata{i});

end
end
%end

