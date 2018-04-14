%用于给txt文件打label
clc;
clear all;
%casia_train_align.txt is the txt without label
list_without_label=importdata('casia_train_align.txt');
first = 66;
last = 73;
  mklabel(list_without_label,'casia_train_align_label.txt',first,last );
