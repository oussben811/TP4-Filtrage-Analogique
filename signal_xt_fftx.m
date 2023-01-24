clear all
close all 
clc

Te=5e-4 ;
fe=1/Te;


t=0:Te:5;
N=length(t) ;

%Definition de la fonction xt 

subplot(2,1,1)
xt=sin(2*pi*500*t)+sin(2*pi*400*t)+sin(2*pi*50*t);
plot(t,xt)
title('Signal temporel');
xlabel('t')
ylabel('x(t)')

%la transforme de fourier apllique a xt
fshift = (-N/2:N/2-1)*(fe/N);
y = fft(xt);

subplot(2,1,2)
plot(fshift,fftshift(2*abs(y)/N));
title('Signal frequentiel');
xlabel('f')
ylabel('x(f)')

