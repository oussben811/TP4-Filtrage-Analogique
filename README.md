# TP4-Filtrage-Analogique

## Objectifs
  - Appliquer un filtre réel pour supprimer les composantes indésirables d’un signal. 
  -  Améliorer la qualité de filtrage en augmentant l’ordre du filtre.

## Introduction

## Réalisation du TP

### Partie 1 : Filtrage et diagramme de Bode

  1- Définir le signal x(t) sur t = [0 5] avec Te = 0,0001 s.

  2 Tracer le signal x(t) et sa transformé de Fourrier.

  ![0a](https://user-images.githubusercontent.com/78149349/213871207-37fd7528-b444-46b1-bacc-71608f9339b4.png)
  ![0b](https://user-images.githubusercontent.com/78149349/213871208-1ab5016c-1d01-429b-b07b-ced626c18c7d.png)


   - Remarque
   
          Ce code  permet de visualiser la transformée de Fourier d'un signal temporel.
          "xt" est définie comme la somme de trois sinusoïdes de fréquences 500 Hz, 400 Hz et 50 Hz. 
    
3- La fonction H(f) (transmittance complexe) du filtre passe haut de premier ordre 
    
  ![1](https://user-images.githubusercontent.com/78149349/213871355-4d51645e-20d8-4336-af7b-721930647dae.png)
  ![2](https://user-images.githubusercontent.com/78149349/213871357-4a906d35-f658-42df-aeec-408928bf7f7f.png)

   - Remarque
   
          Ce code  simule les performances d'un filtre passe-bas en utilisant les fonctions
          de transmittance, gain et phase. Il utilise également des échelles logarithmiques pour
          tracer les résultats.Il définit d'abord les variables de temps et de fréquence, puis calcule
          les fonctions de transmittance pour différentes fréquences de coupure (wc). Il utilise ensuite
          ces fonctions pour calculer le gain et la phase, qu'il tracer ensuite sur des sous-graphiques avec
          des échelles logarithmiques. Les légendes du graphique  indiquent les différentes fréquences
          de coupure utilisées.


4-Application du filtre au signal

   a- Tracage du signal temporel filtré

  ![3](https://user-images.githubusercontent.com/78149349/213871360-14a35d41-c0d8-4055-b123-83200e177421.png)
  ![4](https://user-images.githubusercontent.com/78149349/213871362-04ff1d6c-d22f-429f-97dd-b07accf71146.png)
  

   b- Tracage de la difference entre le signal initial et signal temporel filtré

  ![5](https://user-images.githubusercontent.com/78149349/213871364-b2e59fcf-abb6-4e13-889c-08805f5989f6.png)
  ![6](https://user-images.githubusercontent.com/78149349/213871365-9e258a84-9909-4cd3-b886-dc8467ebca76.png)
  

   c- Tracage du signal filtré dans le domaine frequentiel
   
  ![7](https://user-images.githubusercontent.com/78149349/213871367-5458732c-1c25-477e-b3ce-33cb2b69cc72.png)
  ![8](https://user-images.githubusercontent.com/78149349/213871369-259b8ab1-6a2b-440b-9667-7987310b9e89.png)

