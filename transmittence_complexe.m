clear all 
close all 
clc

Te=5e-4 ;
fe=1/Te;
t=0:Te:5;
N=length(t);
f= (0:N-1)*fe/N ;
w=2*pi*f ;



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