clc
clear all;
dir=importdata('cleaned_aligned_reallist.txt');
k=1;
for i=1:10000:450000-1
    adress{k}=dir(i:9999+i,1);
%     adress{9}=dir(4000001:end);
%     fid1=fopen(strcat('casia',num2str(k),'.txt'),'w');                                                       
%%%%需要改文件名称的地方
%     count=fprintf(fid1,' %s',adress{k}');
    k=k+1;
end
% adress{k}
adress{45}=dir(440001:end,1);

for k=1:9
    fid1=fopen(strcat('casia',num2str(k),'.txt'),'w');  
    m=size(adress(k));
    for i=1:m(1)
 fprintf(fid1,' %s',adress{1,k}{i,1});
end