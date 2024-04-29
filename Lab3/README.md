# Laboratorio 3 - Incertidumbre en sensores
# Fundamentos de Robótica Móvil
# Abril 2024
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

# Sensor Ultrasonido

# Sensores Lego
