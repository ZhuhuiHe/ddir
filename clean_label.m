clc
clear all;
load casia_align_list
cleaned_aligned_real_label=importdata('cleaned_aligned_real_label.txt');
casia_allname=importdata('casia_allname.txt');
% cleaned_aligned_real_label.txt
for i=1:453369
    did(i,1)=str2num(cleaned_aligned_real_label.rowheaders{i}(49:end-8));
    
end
% load did
m=size(casia_allname);
for i=1:m(1)
    a=str2num(casia_allname{i}(2:(end-1)));
    inde=size(find(did==a)');
    index(i)=inde(2);
end
m=size(casia_align_list);
for i=1:m(1)
    didlist(i,1)=str2num(casia_align_list{i}(13:end-8));
    
end

m=size(casia_align_list);
for i=1:m(1)
     a=str2num(casia_allname{i}(2:(end-1)));
    inde=size(find(didlist==a)');
    indexlist(i)=inde(2);
end
% m=size(index);
% for i=1:m(2)
%     if index(i)==indexlist(i)
%         
