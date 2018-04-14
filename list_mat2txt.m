
load casia_align_list.mat;
fid=fopen('casia_align_test.txt','w');
%将没有标签的casia_align_list转换成txt格式，利用测试使用
list = casia_align_list;
m=length(list);
for i=1:m
 fprintf(fid,'%s\n',list{i});
end
