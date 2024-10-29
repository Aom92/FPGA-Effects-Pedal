# FPGA Effects Pedal

![Banner](https://i.imgur.com/pYlIVK3.png)



Proyecto de **Tesis**, donde se realiza procesamiento de digital de audio en tiempo real para hacer un una pedalera de efectos de guitarra con la Tarjeta de desarrollo estudiantíl DE10-Lite de Altera. Esto para proporcionar bases en proyectos basados en FPGA para estudiantes de la carrera de Ingeniería en Computación. Pues los proyectos para esta tecnologia no van mas allá de la teoría vista en las clases. 


## Estructura
Consiste de varias carpetas donde se tienen proyectos de Quartus individuales, los cuales posteriormente se utilizan como bloques para el proyecto principal ***"Effects-Pedal"***. Dentro de cada carpeta se tiene un proyecto de Quartus Prime, el cual se puede compilar y cargar en cualquier DE10-Lite. También es importante tomar en cuenta que los proyectos fueron realizados en ***Quartus Prime 20.1***, pues a partir de versiones posteriores el modulo controlador de la SDRAM de la FPGA pasa a solo estar disponible en las versiones de paga de Quartus Prime.


## Efectos

Se pueden generar los siguientes efectos en *tiempo real* :

* Distorsión
* Tremolo
* Reverberación
* Delay
* Octavas

Dentro de cada carpeta donde se definen los efectos estan explicaciones a mas detalle de su funcionamiento. 



## Uso
Todos los proyectos siguen el siguiente pinout tanto para las entradas como para las salidas:
| Pin| Descripción |
| ------------- | ------------- |
| A0 (ADC_IN0)| Entrada de audio analógica  |
| IO2 (Arduino_IO2)  | Salida de audio del DAC  |
| 5V (VCC5)| Alimentación para circuitos externos |
| GND  |  Tierra Común  |

La señal de audio analógica que entra a la FPGA debe ser nivelada para entrar en el rango de 0 a 5V, ya que el ADC solo opera con valores de voltaje positivos. En caso de no hacerlo, la señal de entrada se vería como el siguiente ejemplo y se distorsiona el audio.

![entrada de audio sin offset de voltaje](https://user-images.githubusercontent.com/9735721/218288852-55d38257-8de1-4a95-9a18-44cfaa98c755.png)


Por lo tanto se puede utilizar un circuito nivelador de voltaje para la señal de entrada y entre dentro del rango apropiado para el ADC. Tambien es preferible que la salida de audio sea amplificada, ya que a la salida de la FPGA tenemos una señal de audio muy debíl. El siguiente circuito es una solucion a este problema. 
![CIRCUITO AMPLIFICADOR](https://user-images.githubusercontent.com/9735721/218288832-148a48d7-123a-40c6-9e0f-f6ca73fd0c17.png)



Para el desarrollo se tomo el circuito anterior y posteriormente se paso a un diseño en PCB resultando en una placa estilo arduino que se conecta a los pines de la FPGA.
![PCB Render](https://github.com/Aom92/FPGA-Effects-Pedal/assets/9735721/9e0d88ae-96cd-4016-86a6-ade014306b47)








La respuesta en frecuencia del adc muestra que incluso con un circuito nivelador sencillo el total de distorsión armónica está dentro de un rango aceptable.
![FreqResponse1200](https://user-images.githubusercontent.com/9735721/218288911-2d41bf02-f93a-4ab0-9854-2ace07bf7d4b.png)









