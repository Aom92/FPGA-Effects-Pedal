# Effects Pedal
Este es el proyecto princiapl, en el cual se implementan varios instancias/bloques para conformar un pedal de efectos de guitarra simple.
Los efectos involucrados en esta pedalera de guitarra son:
  - Distorción
  - Delay
  - Reverberación
  - Tremolo
  - Octave (Up Octave)


## Funcionamiento

Se tienen varios archivos bloques, donde interconectamos cada uno de los distintos elementos que se han generado, y por ahora el bloque "Effects Pedal" Internamente tiene descritos los comportamientos de varios otros efectos, los cuales por medio de la entrada de un switch pueden irse alternando entre ellos. Por el momento solo es posible escuchar un efecto a la vez, mas adelante será posible tener varios efectos en cascada.


### Bloques utilizados:
  Los siguientes bloques que se instancian en el diseño son:
    -  ADC_Simple
    -  EffectPedal
    -  DAC
    -  DAC2
    -  DAC_Signed
    -  Deco7Seg
    -  NCO 


A continuacion se muestra una imagen del diagrama de bloques a:  

12/Sep/2023

![Preview1](https://i.imgur.com/kYXcSOG.png)

13/En/2023
![Preview1](https://user-images.githubusercontent.com/9735721/215596976-0fe0f7b9-005a-4b33-b3b6-0efe7b2b6b89.png)

