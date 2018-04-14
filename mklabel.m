function [ list_label ] = mklabel(list,dir_save,first,last )
%此函数用于给list 打标签
%list-尚未打标签的mat文件,其中list有n个元胞数组组成，每一个元胞是完整的路径
%dir_save-保存在txt文件的名字 eg :'test.txt'
%first-对象的起始字符索引，last对象结束字符的索引
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

