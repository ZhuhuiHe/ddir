
load casia_align_list.mat;
fid=fopen('casia_align_test.txt','w');
%��û�б�ǩ��casia_align_listת����txt��ʽ�����ò���ʹ��
list = casia_align_list;
m=length(list);
for i=1:m
 fprintf(fid,'%s\n',list{i});
end
