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

La señal de audio analógica que entra a la FPGA debe ser nivelada para entrar en el rango de 0 a 5V, ya que el ADC solo opera con valores de voltaje positivos. Por lo tanto se puede utilizar un circuito sencillo como el siguiente para poder nivelar el voltaje y opere dentro del rango adecuado. 

![Circuito Nivelador](https://user-images.githubusercontent.com/9735721/215594323-21b9fc3a-d449-42f6-b820-cae92a8238dc.png)


Tambien es preferible que la salida de audio sea amplificada, durante el desarrollo de este proyecto se utilizó un circuito como el siguiente:

![CircuitoAmplificador](https://user-images.githubusercontent.com/9735721/215594671-3b325f12-9d30-4d6e-a234-db7f96b5d785.png)
















