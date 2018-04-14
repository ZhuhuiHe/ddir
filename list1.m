clc
clear all;
dir=importdata('list1.txt');
m=size(dir.rowheaders);
casia_allname=importdata('casia_allname1.txt');
k=size(casia_allname);
for i=1:m(1)
%     list{i,1}=strcat(dir{i,1},'g');
% list{i,1}=strcat('/media/sdb0/wuwenhao/data/lfw_align_c++/',dir.rowheaders{i,1},[' ' num2str(dir.data(i)+k(1))]);
list{i,1}=strcat('/media/sdb0/wuwenhao/data/lfw_align_c++/',dir.rowheaders{i,1},[' ' num2str(dir.data(i)+10575)]);
end
