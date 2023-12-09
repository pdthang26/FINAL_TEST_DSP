clear all; close all;
x  =  load("2nd_test\2nd_test\2004.02.18.00.02.39");
data = x(:,1);

result = fourier_trans_fillter(data,20000,true);


