% question 6
clear;clc
img=[13 14 15 16;9 10 11 12;5 6 7 8;1 2 3 4]
fft2(img)


img=[1 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16]
fft2(img)

img=[2 1 0 1;1 0 0 0;1 0 0 0 ]
fft2(img) % careful about the coordinary.


%% question 8
close all
clear;
clc;
A=imread('Foriginal_quiz.jpg');
I = im2double(A);
imshow(I);

LPF=1/9*ones(3);
% low pass filter
I1=imfilter(I,LPF,'replicate');
figure;
imshow(I1)

%down sampling
I2=I1(1:2:end,1:2:end);
figure

imshow(I2);

%up sampling
I3=zeros(359,479);
I3(1:2:end,1:2:end)=I2;
figure;
imshow(I3);

%bilinear interpolation;

newfilter =[0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25];
I4=imfilter(I3,newfilter);
figure;
imshow(I4)

% compare


[a,b]=size(I);
MSE=1/(a*b)*sum(sum((I-I4).^2));
%PSNR
MAX=1;
PSNR=10*log10(MAX^2/MSE);








