%import

I=imread('noisy.jpg');
% I1=double(I);
I2=im2double(I);
% I1-I2;
imshow(I2);

% median filtering 
I3=medfilt2(I2);
figure;
imshow(I3);
%second pass
I4=medfilt2(I3);
figure;
imshow(I4);
%psnr
%import
IO=imread('original.jpg');
IO2=im2double(IO);
%calculate the MSE;
[a,b]=size(I);
MSE=1/(a*b)*sum(sum((IO2-I2).^2));

%PSNR
MAX=1;
PSNR=10*log10(MAX^2/MSE);
% one-pass
MSE1=1/(a*b)*sum(sum((IO2-I3).^2));
PSNR1=10*log10(MAX^2/MSE1);
% second-pass
MSE2=1/(a*b)*sum(sum((IO2-I4).^2));
PSNR2=10*log10(MAX^2/MSE2);