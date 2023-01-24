clear all
close all
clc

[signal,fs] = audioread('test.wav');
signal = signal';
N = length(signal);

subplot(311)
spect_signal = fft(signal);
f = (0:N-1)*(fs/N);
fshift = (-N/2:N/2-1)*(fs/N);
plot(fshift, fftshift(2*abs(spect_signal)/N))
title('Signal test dans le domaine freq')

subplot(312)
fc = 4500; 
H = 1./(1+1j*(f/fc).^1); %filtre passe bas avec fc =4500 et n=1 
semilogx(f(1:floor(N/2)),abs(H(1:floor(N/2))),"linewidth",1.5)
title('Filtre passe bas avec fc=4500 et n=1')

subplot(313)
filter = [H(1:floor(N/2)),flip(H(1:floor(N/2)))]; 
filterd_signal_freq = spect_signal(1:end-1).*filter; 
filterd_signal_tmp = ifft(filterd_signal_freq,"symmetric");
plot(fshift(1:end-1), fftshift(2*abs(fft(filterd_signal_tmp)/N)))
title('Signal test filtre dans le domaine freq')