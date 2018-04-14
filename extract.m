clear all;
clc
test_time = importdata('test-time_Aaron_Eckhart_480.txt');
m=length(test_time.data)-4;
k=2;
for i=1:5:m
test_time_Aaron_Eckhart_480(:,k)=test_time.data(i:(i+4),1);
k=k+1;
end

for i=1:5
test_time_Aaron_Eckhart_480(i,1)=mean(test_time_Aaron_Eckhart_480(i,:));
end