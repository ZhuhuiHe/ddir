clc;
clear all;
close;
load 13233
m=size(lfw);
% for i=:m(1)
S = regexp(lfw, '/', 'split');
for i=1:m(1)
    lfw_fix{i,1}=S{i,1}{1,8};
%     lfw_fix{i,1}=double(lfw_fix{i,1});
%     list{i,1}=double(list{i,1});
end
% lfw_fix{:,1}=double(lfw_fix{:,1});
% list{1:m(1),1}=double(list{1:m(1),1});
%    find(lfw_fix{:,1}~==list{1:m(1),1});
% find(lfw_fix{:,1}~=list{1:m(1),1});
k=size(list);
for i=1:k(1)
    for j=1:m(1)
     ruju(i,j)=strcmp(list{i,1},lfw_fix{j,1});
    end
     if sum(ruju(i,:))==0
        disp(num2str(i));
    end
end
