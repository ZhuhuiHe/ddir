%将casia分成val和train，val是前20个
clear all;
clc;
name_label =importdata('casia_train_align_label.txt');
casia_val_label=fopen('casia_val.txt','w');
casia_train_label=fopen('casia_train.txt','w');
m = size(name_label.textdata);
k=0;
ii=1;
for i=1:m(1)
     if (name_label.data(i)==k)
         if(ii<6)
            fprintf(casia_val_label,'%s\n',[name_label.textdata{i},[' ' num2str(name_label.data(i))]]);
            ii=ii+1;
         else
             fprintf(casia_train_label,'%s\n',[name_label.textdata{i},[' ' num2str(name_label.data(i))]]);
          end
     else
             fprintf(casia_val_label,'%s\n',[name_label.textdata{i},[' ' num2str(name_label.data(i))]]);
             k=k+1;
             ii=2;
     end
        
    
end

