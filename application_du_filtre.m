clear all 
close all 
clc

Te=5e-4 ;
fe=1/Te;
t=0:Te:5;
N=length(t);
f= (0:N-1)*fe/N ;
w=2*pi*f ;


%Definition de la fonction xt 
xt=sin(2*pi*500*t)+sin(2*pi*400*t)+sin(2*pi*50*t);

%la transforme de fourier apllique a xt
fshift = (-N/2:N/2-1)*(fe/N);
y = fft(xt);



% la fonction de transmittence 

K = 1 ;
wc=2*pi*500 ;
wc1 =2*pi* 10 ;
wc2 =2*pi* 100 ;
wc3 =2*pi* 1500;

Hf = (K*1j*w/wc)./(1+1j*w/wc) ;
H1 = (K*1j*w/wc1)./(1+1j*w/wc1) ;
H2 = (K*1j*w/wc2)./(1+1j*w/wc2) ;
H3 = (K*1j*w/wc3)./(1+1j*w/wc3) ;

Gf = 20*log(abs(Hf)); %on trace le gain en utilisant l echelle logarithmique
G1 = 20*log(abs(H1));
G2 = 20*log(abs(H2));
G3 = 20*log(abs(H3));



phif = angle(Hf); %on utilise la fct angle pour calculer la phase
phi1 = angle(H1);
phi2 = angle(H2);
phi3 = angle(H3);

hold on
subplot(2,1,1) 
semilogx(f,Gf,'y',f,G1,'g',f,G2,'r',f,G3,'b')
ylabel('Gain (dB)')
xlabel('Frequence (Hz)')
title('diagramme de gain')
legend("fc=500","fc=10","fc=100","fc=1500")
grid on 

subplot(2,1,2) 
semilogx(f,phif,'y',f,phi1,'g',f,phi2,'r',f,phi3,'b')
ylabel('Phase (deg)')
xlabel('Frequence (Hz)')
title('diagramme de phase')
legend("fc=500","fc=10","fc=100","fc=1500")
grid on

Hflip=[Hf(1:floor(N/2)),flip(Hf(1:floor(N/2)))];
Hflip1=[H1(1:floor(N/2)),flip(H1(1:floor(N/2)))];
Hflip2=[H2(1:floor(N/2)),flip(H2(1:floor(N/2)))];
Hflip3=[H3(1:floor(N/2)),flip(H3(1:floor(N/2)))];

y_filtre = y(1:end-1).*Hflip;
y_filtre1 = y(1:end-1).*Hflip1 ;
y_filtre2 = y(1:end-1).*Hflip2 ;
y_filtre3 = y(1:end-1).*Hflip3 ;


y_filtre_temp = ifft(y_filtre,'symmetric');
y_filtre_temp1 = ifft(y_filtre1,'symmetric');
y_filtre_temp2 = ifft(y_filtre2,'symmetric');
y_filtre_temp3 = ifft(y_filtre3,'symmetric');

%tracage des signaux temp filtres
subplot(4,1,1)
plot(t(1:end-1), y_filtre_temp)
title("signal temporel avec H(fc=500)")
subplot(4,1,2)
plot(t(1:end-1), y_filtre_temp1)
title("signal temporel avec H(fc=10)")

subplot(4,1,3)
plot(t(1:end-1), y_filtre_temp2)
title("signal temporel avec H(fc=100)")

subplot(4,1,4)
plot(t(1:end-1), y_filtre_temp3)
title("signal temporel avec H(fc=1500)")

%tracage des differences entre le signal xt et les  signaux temp filtres

subplot(4,1,1)
plot(t(1:end-1) , xt(1:end-1) -y_filtre_temp)
title("xt - signal temporel avec H(fc=500)")
subplot(4,1,2)
plot(t(1:end-1) , xt(1:end-1) -y_filtre_temp1)
title("xt - signal temporel avec H(fc=10)")

subplot(4,1,3)
plot(t(1:end-1) , xt(1:end-1) -y_filtre_temp2)
title("xt - signal temporel avec H(fc=100)")

subplot(4,1,4)
plot(t(1:end-1) , xt(1:end-1) -y_filtre_temp3)
title("xt - signal temporel avec H(fc=1500)")


%tracage des signaux freq filtres
subplot(2,2,1)
plot(fshift(1:end-1),fftshift(2*abs(fft(y_filtre_temp))/N))
title("signal freq filtre avec H(fc=500)")
subplot(2,2,2)
plot(fshift(1:end-1),fftshift(2*abs(fft(y_filtre_temp1))/N))
title("signal freq filtre avec H(fc=10)")

subplot(2,2,3)
plot(fshift(1:end-1),fftshift(2*abs(fft(y_filtre_temp2))/N))
title("signal freq filtre avec H(fc=100)")

subplot(2,2,4)
plot(fshift(1:end-1),fftshift(2*abs(fft(y_filtre_temp3))/N))
title("signal freq filtre avec H(fc=1500)")


