function [ list_label ] = mklabel(list,dir_save,first,last )
%�˺������ڸ�list ���ǩ
%list-��δ���ǩ��mat�ļ�,����list��n��Ԫ��������ɣ�ÿһ��Ԫ����������·��
%dir_save-������txt�ļ������� eg :'test.txt'
%first-�������ʼ�ַ�������last��������ַ�������
m=length(list);
temp='instital';
currentLabel = -1;
% list_split=split(list);
fid=fopen(dir_save,'w');
for i=1:m
    t = list{i}(first:last);
    if ~strcmp(temp,t)
        temp = t;
        currentLabel = currentLabel + 1;
    end
    list_label{i, 1} = [list{i},[' ' num2str(currentLabel)]];
%     list_label(i,1)=list_la{i, 1};
 fprintf(fid,'%s\n',list_label{i} );
    
end
fclose('all');

