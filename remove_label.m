%clear all;
%txt = 'lfw_label.txt';
function [] = remove_label( inputxt ,outputtxt)
%去除带有label的txt
%   txt = 'lfw_label.txt';带label的list
%   outputtxt = 'lfw.txt' 输出不带label的list
name_label =importdata(inputxt);
fid=fopen(outputtxt,'w');
m = size(name_label.textdata);
for i=1:m(1)
    fprintf(fid,'%s\n',name_label.textdata{i});

end
end
%end

