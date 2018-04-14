%根据lfw中的人名创建空的lfw文件夹，用于保存检测结果
clear all;

dir=importdata('lfw_allname.txt');
m=size(dir);
for i=1:m(1)
% new_fold='../ddir/aa';
ff=strcat('../ddir/lfw/',dir{i}(2:end-1));
mkdir(ff);
end