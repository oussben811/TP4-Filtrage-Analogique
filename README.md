# TP4-Filtrage-Analogique

## Introduction

      Le filtrage analogique est une technique très utile dans de nombreuses applications 
      nécessitant une sélection de fréquences spécifiques dans un signal analogique. 
      Les différentes catégories de filtres, comme les filtres passe-bas, passe-haut,
      passe-bande et coupure de bande, permettent de sélectionner des plages de fréquences
      spécifiques en fonction des besoins de l'application. Les composants électroniques 
      tels que les résistances, les condensateurs et les inducteurs sont utilisés pour construire 
      ces filtres.Cette technique est particulièrement utile pour la suppression des bruits de fond,
      la séparation de signaux et le traitement audio et vidéo. Cependant, il faut noter que 
      le filtrage analogique peut causer des distorsions et des pertes de signal, il est donc 
      important de bien concevoir et de tester les filtres pour minimiser ces effets.


## Objectifs
  - Appliquer un filtre réel pour supprimer les composantes indésirables d’un signal. 
  -  Améliorer la qualité de filtrage en augmentant l’ordre du filtre.
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
  
   - Remarque
   
          Ce code applique différents filtres à un signal "y" en utilisant les réponses fréquentielles
          "Hf", "H1", "H2" et "H3" avec des fréquences de coupure de 500, 10, 100 et 1500 Hz respectivement. 
          Les signaux filtrés sont ensuite transformés du domaine fréquentiel au domaine temporel en utilisant
          la transformée de Fourier inverse, et les signaux résultants sont tracés dans des sous-graphiques 
          avec des titres différents.
          
   b- Tracage de la difference entre le signal initial et signal temporel filtré

  ![5](https://user-images.githubusercontent.com/78149349/213871364-b2e59fcf-abb6-4e13-889c-08805f5989f6.png)
  ![6](https://user-images.githubusercontent.com/78149349/213871365-9e258a84-9909-4cd3-b886-dc8467ebca76.png)
  
   - Remarque
   
           Ce code trace les différences entre le signal "xt" et les signaux temporels filtrés avec 
           les fréquences de coupure de 500, 10, 100, et 1500 Hz respectivement. Pour chaque fréquence
           de coupure, la différence est calculée en soustrayant le signal filtré à "xt" et le résultat
           est tracé dans un sous-graphique avec un titre approprié. Le tracage de ces différences permet
           de visualiser l'effet des différents filtres sur le signal d'origine "xt" et de comparer les 
           résultats obtenus pour chaque fréquence de coupure.

   c- Tracage du signal filtré dans le domaine frequentiel
   
  ![7](https://user-images.githubusercontent.com/78149349/213871367-5458732c-1c25-477e-b3ce-33cb2b69cc72.png)
  ![8](https://user-images.githubusercontent.com/78149349/213871369-259b8ab1-6a2b-440b-9667-7987310b9e89.png)

  - Remarque 

          Ce code trace la représentation du domaine fréquentiel des signaux filtrés obtenus avec 
          des fréquences de coupure de 500, 10, 100 et 1500 Hz respectivement. Pour chaque filtre,
          la transformée de Fourier du signal filtré est calculée et sa partie réelle est tracée 
          dans un sous-graphique avec un titre approprié. Le tracage de ces représentations fréquentielles
          permet de visualiser l'effet des différents filtres sur les fréquences du signal d'origine et 
          de comparer les résultats obtenus pour chaque fréquence de coupure.
          
 
 ### Partie 2 : Dé-bruitage d'un signal sonore
 
 1- Proposer une méthode pour supprimer ce bruit sur le signal.
 
    Une méthode couramment utilisée pour supprimer les bruits haute fréquence sur un signal
    est l'utilisation d'un filtre passe-bas. Ce filtre permet de laisser passer les fréquences
    basses du signal, tout en atténuant les fréquences hautes considérées comme du bruit.
    
 2- Mettez-la en oeuvre. Quelle influence à le paramètre K du filtre que vous avez 
  utilisé ?
 
  ![1](https://user-images.githubusercontent.com/78149349/213878813-cf277651-7801-4ec8-b296-c79dc44b9eed.png)
  ![2](https://user-images.githubusercontent.com/78149349/213878812-9749c3f6-0a3f-4e8b-828a-5208c4372492.png)
  
  - Remarque
  
        Ce code utilise la méthode de la transformée de Fourier pour appliquer un filtre passe-bas
        à un signal audio.Le signal audio est d'abord lu et la longueur du signal est déterminée.
        Le code trace ensuite le signal dans le domaine fréquentiel en utilisant une transformée 
        de Fourier, trace le filtre passe-bas qui est appliqué au signal avec une fréquence de coupure
        de 4500 et un ordre de filtre de 1, puis finalement trace le signal  filtré dans le domaine 
        fréquentiel en utilisant une transformée de Fourier inverse. Le signal filtré est le signal 
        d'origine multiplié par le filtre dans le domaine fréquentiel et convertit ensuite en domaine
        temporel en utilisant la transformée de Fourier inverse.

  
 

 3- Quelles remarques pouvez-vous faire notamment sur la sonorité du signal final.
    
    la sonorité du signal final dépendra de la fréquence de coupure choisie pour le filtre. 
    Si la fréquence de coupure est trop élevée, certaines fréquences importantes pour la musique
    pourraient être supprimées, altérant ainsi la qualité sonore. Il est donc important de choisir 
    une fréquence de coupure qui ne supprime pas les fréquences importantes pour la musique pour
    maintenir la qualité sonore désirée.
  


4- Améliorer la qualité de filtrage en augmentant l’ordre du filtre. 

  ![Screenshot 2023-01-21 181314](https://user-images.githubusercontent.com/78149349/213878824-ada9d6cf-ceee-49a4-bec6-da55b0368b95.png)
  ![4](https://user-images.githubusercontent.com/78149349/213878815-1952645c-467e-4c2f-81f0-6d5e4f06e96a.png)
  
  - Remarque
  
         Il définit  un filtre passe-bas avec une fréquence de coupure (fc) de
         4500 Hz et une ordre (n) de 100
         En résumé, augmenter l'ordre du filtre permet d'améliorer la qualité de filtrage en supprimant
         efficacement les bruits haute fréquence tout en préservant les fréquences importantes pour
         la musique, mais cela peut augmenter le temps de calcul nécessaire pour filtrer le signal.


## Conclusion

      Le filtrage analogique consiste à utiliser des circuits électroniques pour modifier les caractéristiques
      d'un signal analogique en réduisant ou en accentuant certaines fréquences spécifiques. Il existe différents
      types de filtres analogiques, tels que les filtres passe-bas, passe-haut, passe-bande et coupe-bande, 
      chacun ayant des applications spécifiques. Les filtres analogiques sont encore largement utilisés dans
      les systèmes électroniques, en particulier dans les applications audio et de communication.
