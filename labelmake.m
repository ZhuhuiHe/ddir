clc
clear all;
load casia_align_list
cleaned_aligned_real_label=importdata('cleaned_aligned_real_label.txt');
casia_allname=importdata('casia_allname1.txt');

m=size(casia_allname);
for i=1:m(1)
    casia_allname{i,2}=i;
    
end

m=size(casia_align_list);
for i=1:m(1)
    didlist(i,1)=str2num(casia_align_list{i}(13:end-8));
    
end

m=size(casia_allname);
for i=1:m(1)
     a=str2num(char(casia_allname{i}(2:(end-1))));
inde=size(find(didlist==a));
indexlist(i)=inde(1);
end
m=size(casia_allname);
for i=1:m(2)
  casia_align_list{sum(indexlist(1:i))-indexlist(1:i)+1:sum(indexlist(1:i)),2}=i-1;
 
strcat(casia_align_list{:,1},[' ' casia_align_list{:,2}])
end 


