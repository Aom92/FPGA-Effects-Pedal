# DE10_AudioFun

![Banner](https://user-images.githubusercontent.com/9735721/215595795-00e77a50-db76-4c55-bf58-ca0886cf65de.png)


Proyecto de Servicio Social, donde realizaré procesamiento de audio para hacer un sintetizador y pedalera de efectos con la FPGA DE10-Lite



## Estructura
Conssite de varias carpetas donde se tienen proyectos individuales, los cuales posteriormente se utilizan como bloques para el proyecto principal que por ahora es ***"Effects-Pedal"***. Dentro de cada carpeta se tiene un proyecto de Quartus Prime, el cual se puede compilar y cargar en cualquier DE10-Lite. 

También es importante tomar en cuenta que los proyectos fueron realizados en Quartus Prime 20.1, pues a partir de versiones posteriores el modulo controlador de la SDRAM de la FPGA pasa a solo estar disponible en las versiones de paga de Quartus Prime.




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


Por lo tanto se puede utilizar un circuito nivelador de voltaje para la señal de entrada y entre dentro del rango apropiado para el ADC. Tambien es preferible que la salida de audio sea amplificada, ya que a la salida de la FPGA tenemos una señal de audio muy debíl.

Para el desarrollo de este proyecto se utilizó un circuito como el siguiente, el cual aun presenta incosistencias pero es es el que produce la menor cantidad de interferencia y ruido añadido a la señal de audio que se procesa.


![CIRCUITO AMPLIFICADOR](https://user-images.githubusercontent.com/9735721/218288832-148a48d7-123a-40c6-9e0f-f6ca73fd0c17.png)



La respuesta en frecuencia del adc muestra que incluso con un circuito nivelador sencillo el total de distorsión armónica está dentro de un rango aceptable.
![FreqResponse1200](https://user-images.githubusercontent.com/9735721/218288911-2d41bf02-f93a-4ab0-9854-2ace07bf7d4b.png)









