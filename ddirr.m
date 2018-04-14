clear all;

dir=importdata('lfw_allname.txt');
m=size(dir);
for i=1:m(1)
% new_fold='../ddir/aa';
ff=strcat('../ddir/lfw/',dir{i}(2:end-1));
mkdir(ff);
end