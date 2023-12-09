function x_filtered = fourier_trans_fillter(data,Fs, verbose)




N = length(data);

fs = Fs;
f = 0:fs/N:(N-1)*fs/N;
X = fft(data);
Ak = 1/N*abs(X);  % amplitude spectrum
% Pk = Ak.*Ak;      % power spectrum

X_new = (Ak >0.001).*X;
Ak_new = 1/N*abs(X_new);  % amplitude spectrum

x_filtered = ifft(X_new);
if verbose == true
    
    subplot(2,2,1);
    plot(data);
    title("dữ liệu đưa vào");

    subplot(2,2,2);
    plot(f(1:N/2),Ak(1:N/2));
    title("spectrum dữ liệu đưa vào");

    subplot(2,2,3);
    plot(x_filtered);
    title("dữ liệu đã lọc nhiễu");

    subplot(2,2,4);
    plot(f(1:N/2),Ak_new(1:N/2));
    title("spectrum dữ liệu đã lọc nhiễu");
end
end