clc
clear all;
% load casia_align_list
% cleaned_aligned_real_label=importdata('cleaned_aligned_real_label.txt');
dir=importdata('casia_lfw1.txt');
m=size(dir.rowheaders);
temp = -1;
currentLabel = -1;
fid=fopen('casia_lfw_mix.txt','w');
for i = 1:m
    t = dir.data(i);
    if temp ~= t
        temp = t;
        currentLabel = currentLabel + 1;
    end
    list{i, 1} = [dir.rowheaders{i,1},[' ' num2str(currentLabel)]];
    fprintf(fid,'%s\n',list{i} );
    
end
 
 
 
