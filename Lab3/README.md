# Laboratorio 3 - Incertidumbre en sensores
# Fundamentos de Robótica Móvil
# Mayo 2024
![](./Imgs/ESCUDO.png)

# Integrantes:
- Johan López
- David Cocoma
- Joan Sebastián Jauregui
- Felipe Cruz

# Contenido
En el repositorio de este laboratorio se encuentra lo siguiente:
- README.md -> Archivo base con la descripción del laboratorio.
- Imgs -> Carpeta con imágenes utilizadas en el archivo README.
- Code -> Carpeta con los diferentes códigos utilizados durante la práctica: Matlab (*.m*), Arduino (*.ino*), y LegoMindstorms (*.lmsp*).
- Datos -> Carpeta con los archivos .csv que contienen los datos tomados y códigos en Python para el procesamiento de estos.

Tabla de Contenidos
---

- [Cuestionario](#cuestionario)
- [Sensor Lidar](#sensor-lidar)
   - [Preparación Lidar](#preparación-del-entorno-y-del-sensor-lidar)
   - [Toma de datos Lidar](#toma-de-datos-lidar)
   - [Procesamiento de datos Lidar](#procesamiento-de-datos-lidar)
      - [Ploteo](#ploteo)
      - [Mapa de ocupación](#mapa-de-ocupación)
      - [Mapa del entorno](#mapa-del-entorno)
   - [Análisis y fuentes de error](#análisis-y-fuentes-de-error)
- [Sensor Ultrasonido](#sensor-ultrasonido)
   - [Preparación Ultrasonido](#preparación-del-entorno-y-del-sensor-ultrasonido)
   - [Toma de datos ultrasonido](#toma-de-datos-ultrasonido)
   - [Procesamiento de datos ultrasonido](#procesamiento-de-datos-ultrasonido)
      - [Medidas estadísticas](#medidas-estadísticas)
      - [Gráficos estadísticos](#gráficos-estadísticos)
      - [Análisis y conclusiones](#análisis-y-conclusiones)
- [Sensores Lego](#sensores-lego)
   - [Preparación Robot Lego EV3](#preparación-del-entorno-y-del-robot-lego-ev3)
   - [Medición distancia](#medición-de-distancia-en-avance)
      - [Experimento de avance](#experimento-de-avance)
         - [Avance ultrasonido](#avance-con-ultrasonido)
         - [Avance encoder](#avance-con-encoder-del-motor)
      - [Experimento de avance a máxima velocidad](#experimento-de-avance-a-máxima-velocidad)
         - [Avance ultrasonido máxima velocidad](#avance-con-ultrasonido-máxima-velocidad)
         - [Avance encoder máxima velocidad](#avance-con-encoder-del-motor-máxima-velocidad)
      - [Análisis/Errores avance](#análisis-comparativo-y-cálculo-de-errores-avance)
   - [Medición ángulo de giro](#medición-del-ángulo-de-giro-de-las-ruedas)
      - [Setup experimental](#setup-experimental)
      - [Experimento 30 grados](#experimento-30-grados)
      - [Experimento 45 grados](#experimento-45-grados)
      - [Análisis/Errores giro](#análisis-comparativo-y-cálculo-de-errores-giro)

# Cuestionario
1. ¿Qué es el Vocabulario Internacional de Metrología (VIM)? 

 Es un diccionario terminolohgico que contiene las definiciones y denominaciones que conciernen a la metrologia,ciencia de las mediciones y sus aplicaciones, el cual pretende ser una guia comun para todo aquel implicado en la planificacion y realizacion de mediciones incluyendo asi a cualquier individuo u organizacion.Se tienen tres ediciones del VIM siendo asi le tercera edicion la vigente en la actualidad ,esta edicion tiene un enfoque en la incertidumbre de la medida , en esta edicion se pueden encontrar lo siguiente :magnitudes y unidades,mediciones,dispositivos de medida,propiedades de los dispositivos de medida y patrones ,asi como tambien las convenciones respectivas.

2. Según el VIM ¿Qué es?
- exactitud de medida: Es la proximidad entre un valor medido y un valor verdadero de un mensurando (2.13)
- precisión de medida: Es la proximidad entre las indicaciones o los valores medidos obtenidos en mediciones repetidas de un
mismo objeto, o de objetos similares, bajo condiciones especificadas (2.15)
- error de medida: Es la diferencia entre un valor medido de una magnitud y un valor de referencia (2.16)
- incertidumbre de medida: Es la parámetro no negativo que caracteriza la dispersión de los valores atribuidos a un mensurando, a
partir de la información que se utiliza (2.26)

NOTA: los numeros al final de cada definicion corresponde a la numeracion del VIM tercera edicion.

3. Explique la diferencia entre un error sistemático y un error aleatorio.

  Ambos son compnentes de error de medida en los que en mediciones repetidas para el sistematico  es constante o predecible y para el aleatorio varia de forma impredecible.(2.17 y 2.19)

4. De acuerdo a la teoría de estadística: ¿Qué es valor medio? ¿Cuáles magnitudes se usan para medir la dispersión de datos?

  Es el valor tipico o promedio que representa la tendencia general de los datos ,tambien conocido como medida de tendencia central, se tienen tres medidas de tendencia central las cuales son :moda,media y madiana.
  Para medir la dispersion de datos se tienen las siguientes medidas de variabilidad:Rango ,Varianza ,Desviacion estandar y el Rango interquartilico.

# Sensor Lidar

https://la.mathworks.com/matlabcentral/fileexchange/57425-matlab-driver-for-hokuyu-urg-family
https://la.mathworks.com/matlabcentral/fileexchange/36700-hokuyo-urg-04lx-lidar-driver-for-matlab

```
Warning: serial will be removed in a future release. Use serialport
instead. 
Warning: Unsuccessful read: A timeout occurred before the Terminator
was reached.
'serial' unable to read all requested data. For more information on
possible reasons, see Serial Read Warnings. 
Warning: Unsuccessful read: A timeout occurred before the Terminator
was reached.
'serial' unable to read all requested data. For more information on
possible reasons, see Serial Read Warnings. 

ans =

    'VV
     00P
     VEND:Hokuyo Automatic Co.,Ltd.;[
     PROD:SOKUIKI Sensor URG-04LX-UG01(Simple-URG);[
     FIRM:3.4.03(17/Dec./2012);T
     PROT:SCIP 2.0;N
     SERI:H1510998;V
     
     '

Warning: Unsuccessful read: A timeout occurred before the Terminator
was reached.
'serial' unable to read all requested data. For more information on
possible reasons, see Serial Read Warnings. 

ans =

    'BM
     02R
     
     '
```
## Preparación del entorno y del sensor Lidar

### Código relevante Lidar

## Toma de datos Lidar

## Procesamiento de datos Lidar

### Ploteo

### Mapa de ocupación

### Mapa del entorno

## Análisis y fuentes de error

# Sensor Ultrasonido

## Preparación del entorno y del sensor ultrasonido

### Código ultrasonido

Este código de Arduino está diseñado para medir la distancia utilizando un sensor ultrasónico. Aquí te explico cada parte del código:

#### Declaración de Variables

```cpp
// declaración de variables para pines
const int pinecho = 11;
const int pintrigger = 12;
```
- `pinecho`: Define el pin 11 como el pin de entrada para el sensor ultrasónico.
- `pintrigger`: Define el pin 12 como el pin de salida para el sensor ultrasónico.

```cpp
// variables para calculos
unsigned long tiempo;
float distancia;
```
- `tiempo`: Variable para almacenar el tiempo que tarda el eco en regresar al sensor.
- `distancia`: Variable para almacenar la distancia calculada en centímetros.

#### Función `setup()`

```cpp
void setup()
{
  // preparar la comunicación serial
  Serial.begin(9600);
 
  // configurar los pines utilizados por el sensor
  pinMode(pinecho, INPUT);
  pinMode(pintrigger, OUTPUT);
}
```
- `Serial.begin(9600)`: Inicia la comunicación serial a una velocidad de 9600 baudios.
- `pinMode(pinecho, INPUT)`: Configura el pin `pinecho` (11) como entrada.
- `pinMode(pintrigger, OUTPUT)`: Configura el pin `pintrigger` (12) como salida.

#### Función `loop()`

```cpp
void loop()
{
  // asegurarnos que el pin trigger se encuentra en estado bajo
  digitalWrite(pintrigger, LOW);
  delayMicroseconds(2);
 
  // comenzamos pulso alto, debe durar 10 uS
  // luego regresamos a estado bajo
  digitalWrite(pintrigger, HIGH);
  delayMicroseconds(10);
  digitalWrite(pintrigger, LOW);
 
  // medimos el tiempo en estado alto del pin "echo"
  // el tiempo en estado alto es proporcional a la distancia medida
  tiempo = pulseIn(pinecho, HIGH);
 
  // LA VELOCIDAD DEL SONIDO ES DE 340 M/S O 29,4 MICROSEGUNDOS POR CENTIMETRO
  // DIVIDIMOS EL TIEMPO DEL PULSO ENTRE 58, TIEMPO QUE TARDA RECORRER IDA Y
  // VUELTA UN CENTIMETRO LA ONDA SONORA
  distancia = float(tiempo) / 58.8;
 
  // imprimir la distancia medida al monitor serial
  Serial.print(distancia);
  Serial.print('\n');
 
  // esperar 0,25 segundos antes de realizar otra medición
  delay(250);
}
```

1. **Generar el Pulso Ultrasónico**:
   ```cpp
   digitalWrite(pintrigger, LOW);
   delayMicroseconds(2);
   digitalWrite(pintrigger, HIGH);
   delayMicroseconds(10);
   digitalWrite(pintrigger, LOW);
   ```
   - Se asegura que el pin `pintrigger` está en estado bajo (LOW) durante 2 microsegundos.
   - Luego se envía un pulso alto (HIGH) de 10 microsegundos al pin `pintrigger` para generar una señal ultrasónica.
   - Finalmente, se vuelve a poner el pin `pintrigger` en estado bajo (LOW).

2. **Medir el Tiempo del Eco**:
   ```cpp
   tiempo = pulseIn(pinecho, HIGH);
   ```
   - `pulseIn(pinecho, HIGH)` mide el tiempo que el pin `pinecho` permanece en estado alto (HIGH), lo cual es proporcional a la distancia al objeto.

3. **Calcular la Distancia**:
   ```cpp
   distancia = float(tiempo) / 58.8;
   ```
   - La distancia se calcula dividiendo el tiempo medido entre 58.8, basado en la velocidad del sonido (340 m/s).

4. **Imprimir la Distancia**:
   ```cpp
   Serial.print(distancia);
   Serial.print('\n');
   ```
   - La distancia medida se envía al monitor serial para visualizarla.

5. **Esperar Antes de la Próxima Medición**:
   ```cpp
   delay(250);
   ```
   - Se espera 250 milisegundos (0.25 segundos) antes de realizar otra medición.

Este ciclo se repite indefinidamente mientras el Arduino esté encendido, midiendo y reportando la distancia detectada por el sensor ultrasónico.

## Toma de datos ultrasonido

## Procesamiento de datos ultrasonido


1: 1m

![](./Imgs/ArduinoSample1.jpg)

2: 1.75m

![](./Imgs/ArduinoSample2.jpg)

3: 2.5m

![](./Imgs/ArduinoSample3.jpg)


### Medidas estadísticas

*1: 1m*
$$\bar{x} = 97.7693$$
$$S=0.4594$$
$$S^2=0.2110$$
$$error Absoluto = 3.08\%$$
$$error Relativo = 0.0308\%$$

*2: 1.75m*

$$\bar{x} = 172.6080$$
$$S=0.5434$$
$$S^2=0.2953$$
$$error Absoluto = 3.4700\%$$
$$error Relativo = 0.0198\%$$

*3: 2.5m*
$$\bar{x} = 237.8667$$
$$S=14.2758$$
$$S^2=203.7976$$
$$error Absoluto = 35.7800\%$$
$$error Relativo = 0.1431\%$$


### Gráficos estadísticos

1: 1m

![](./Imgs/histograma100cm.png)

2: 1.75m

![](./Imgs/histograma175cm.png)

3: 2.5m

![](./Imgs/histograma250cm.png)

### Análisis y conclusiones

# Sensores Lego

30%
Ultrasonido: 101.6cm - Patron: 101.1cm
Encoder B: 2096 grad - Patron: 99.5cm
Encoder C: 2098 grad - Patron: 99.4cm

100%
Ultrasonido: 134.1cm - Patron: 133.5cm
Encoder B: 2134 grad - Patron: 98.4cm
Encoder C: 2133 grad - Patron: 98.3cm

## Preparación del entorno y del robot Lego EV3

### Código relevante EV3

## Medición de distancia en avance

### Experimento de avance

#### Avance con ultrasonido

#### Avance con encoder del motor

### Experimento de avance a máxima velocidad



#### Avance con ultrasonido máxima velocidad

Lego Velocidad 100% - Desplazamiento de 100 cm

[![Lego Velocidad 100% - Desplazamiento de 100 cm](https://img.youtube.com/vi/8byMhU9oRZg/0.jpg)](https://www.youtube.com/watch?v=8byMhU9oRZg)

Lego Velocidad 30% - Desplazamiento de 100 cm

[![Lego Velocidad 30% - Desplazamiento de 100 cm](https://img.youtube.com/vi/9WclsTMnz-s/0.jpg)](https://www.youtube.com/watch?v=9WclsTMnz-s)


#### Avance con encoder del motor máxima velocidad

### Análisis comparativo y cálculo de errores avance

## Medición del ángulo de giro de las ruedas

### Setup experimental

### Experimento 30 grados

### Experimento 45 grados

### Análisis comparativo y cálculo de errores giro
