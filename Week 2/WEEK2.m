%% Generate the MSE & PSNR
close all;
clear;
clc;
A=imread('week2_quizzesFlena.gif');

I = im2double(A);
kernel = 1/9*ones(3);
kernel2 = 1/25*ones(5);
I2=imfilter(I,kernel,'replicate');
I3=imfilter(I,kernel2,'replicate');
subplot(3,1,1);
imshow(A);
subplot(3,1,2);
imshow(I2);
subplot(3,1,3);
imshow(I3);
%calculate the MSE;
[a,b]=size(I);
MSE=1/(a*b)*sum(sum((I-I2).^2));
MSE2=1/(a*b)*sum(sum((I-I3).^2));
%PSNR
MAX=1;
PSNR=10*log10(MAX^2/MSE);
PSNR2=10*log10(MAX^2/MSE2);