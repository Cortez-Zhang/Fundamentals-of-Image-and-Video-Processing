clear all;
close all;
clc;

% load 
I1=double(imread('1.jpg'));
I2=double(imread('2.jpg'));

%target
B_target=I2(65:96,81:112);
[m,n]=size(B_target);
temp=100;
for i=1:256
    for j=1:320
        
        MAE=1/(m*n)*sum(sum(abs(B_target-I1(i:i+31,j:j+31))));
        if MAE<temp
            temp=MAE
            i
            j
        end
        
    end
end
