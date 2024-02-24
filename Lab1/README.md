# Laboratorio 1 - Conociendo el Robot EV3 (LEGO)
# Fundamentos de Robótica Móvil
# Febrero 2024
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

Tabla de Contenidos
---

- [1. Objetivos](#objetivos)
- [2. Herramientas necesarias](#herramientas-necesarias)
- [3. Procedimiento](#procedimiento)
  - [3.1 ¿Qué es un robot móvil?](#qué-es-un-robot-móvil-definir-qué-es-un-robot-y-cuáles-son-sus-principales-características)
  - [3.2 Presentación de los Robots](#presentación-de-los-robots-descripción-detallada-de-los-robots-kuboki-y-ev3-incluyendo-sus-características-físicas-y-capacidades)
  - [3.3 Estado actual del robot y sistema de control](#estado-actual-del-robot-y-sistema-de-control)
  - [3.4 APIs y lenguajes de programación](#apis-y-lenguajes-de-programación-identificar-las-apis-o-librerías-disponibles-para-programar-los-robots-enumerar-los-lenguajes-de-programación-compatibles-con-los-robots)
  - [3.5 Herramientas de desarrollo propias](#herramientas-de-desarrollo-propias-demostración-de-las-herramientas-de-desarrollo-propias-de-los-robots-destacando-su-utilidad-y-funcionalidades-si-es-posible-resumir-las-herramientas-propias-que-disponen-los-robots-para-facilitar-la-programación-y-el-control)
  - [3.6 Sensores del robot](#sensores-del-robot-identificar-los-sensores-incorporados-en-los-robots-y-explicar-su-funcionamiento-que-compatibildiad-tienes-con-otros-sensores)
  - [3.7 Práctica de identificación y uso de los sensores integrados en los robots](#práctica-de-identificación-y-uso-de-los-sensores-integrados-en-los-robots-explicando-cómo-interactúan-con-el-entorno)
  - [3.8 Modelado del robot real](#modelado-del-robot-real-realizar-el-modelado-del-robot-kuboki-y-ev3-en-coopeliasim)
  - [3.9 Programa simple de movimientos](#programa-simple-de-movimientos-utilizando-las-herramientas-propias-del-robot-crear-un-programa-sencillo-que-indique-movimientos-básicos-del-robot-como-desplazarse-hacia-adelante-girar-a-la-derecha-etc)
  - [3.10 Reflexión y Discusión](#reflexión-y-discusión-sesión-de-reflexión-donde-los-estudiantes-comparten-sus-experiencias-aprendizajes-y-posibles-mejoras-en-el-uso-del-robot-kuboki-en-aplicaciones-prácticas)


## 1. Objetivos
1.1. Familiarizarse con el robots EV3, explorando sus características, herramientas de desarrollo, y sensores.
1.2. Modelar un robot móvil en software de simulación.
1.3. Crear un programa simple para controlar los movimientos del robot.

## 2. Herramientas Necesarias
Robot Lego Ev3.
Computador.

## 3. Procedimiento
### 3.1. ¿Qué es un robot móvil? Definir qué es un robot y cuáles son sus principales características.

  Un robot móvil, es un robot capaz de moverse bajo su propio control y puede ser una plataforma móvil con o sin manipuladores.
  
  Además, un robot es una entidad diseñada para realizar tareas útiles para humanos o equipos, excluyendo aplicaciones de automatización industrial. Los robots se caracterizan por su capacidad de ejecutar acciones de forma autónoma o semiautónoma, a menudo programados o dirigidos mediante inteligencia artificial. Algunos robots pueden ser fijos, mientras que los robots móviles son una subclase que se distingue por su movilidad, permitiéndoles desplazarse en diferentes entornos.
  
  Las principales características de un robot en general pueden incluir:
  
  1. **Autonomía:** Capacidad de operar sin intervención humana.
  2. **Sensorización:** Uso de sensores para percibir su entorno y ajustar sus acciones.
  3. **Capacidad de Manipulación (para algunos robots):** Uso de manipuladores o brazos robóticos para interactuar con el entorno.
  4. **Programabilidad:** Capacidad de ser programados para realizar distintas tareas.
  5. **Adaptabilidad:** Habilidad de ajustar su comportamiento en función de cambios en el entorno.
  
  Los robots pueden ser diseñados para aplicaciones específicas, como robótica industrial, robótica de servicio (que incluye a los robots móviles cuando son utilizados en logística o dispensación de alimentos), robótica médica, entre otras.

### 3.2. Presentación de los Robots: Descripción detallada de los robots Kuboki y EV3, incluyendo sus características físicas y capacidades.
No puede causar interferencia danina el dispositivo debe aceptar cualquier interferencia recibida Puede generar frecuencias de radio Ebfatiza en el uso del adaptador,al parecer es especial para este Transformador LEGO de 10v DC, 7 VA para cargar la bateria

  El conjunto LEGO Mindstorms EV3 está compuesto por una variedad de partes mecánicas y eléctricas de las cuales se pueden ensamblar robots de diversas formas y propósitos.
  
  Un robot necesita tener sensores, que recolectan información de su entorno (los sentidos del robot), un procesador que analiza esta información, es decir, piensa (el cerebro del robot), partes mecánicas que se mueven y realizan una cierta actividad, así como una fuente de energía, que proporciona la energía para partes específicas del robot y le da vida.
  
  Las principales partes del robot son:
  
  - Unidad de control
  - Fuente de poder
  - Puertos
  - Motores servo
  - Sensores

  **Unidad de Control (Ladrillo EV3)**
  A primera vista, se hace evidente que la parte central del robot la ocupa la unidad cuadrada EV3 donde se encuentra el procesador. Está conectado a los sensores, de los cuales recibe y procesa información, a través de cables y puertos. Basándonos en los parámetros que establecemos en los programas que creamos, puede enviar señales de control a partes mecánicas, es decir, motores, y también puede emitir ciertas advertencias audibles. La comunicación entre la computadora y la unidad de control se establece a través de Bluetooth o un cable USB.
  De hecho, la operación del robot está controlada por dos microcontroladores AVR programables. Estos son dispositivos que, además del procesador, contienen algunos periféricos, como memoria, temporizadores, conversores A/D, por lo que se pueden programar varias veces.
  Por supuesto, esta integración se hace a expensas de la reducción de la memoria sobre el procesador estándar de la computadora, por lo que los programas tienen que ser eliminados con frecuencia para que el usuario pueda descargar otros nuevos.
  
  **Fuente de Poder**
  Como cualquier construcción electromecánica, el robot LEGO Mindstorms EV3 requiere energía. El suministro de energía estándar del robot LEGO está compuesto por 6 baterías AA de 1.5V. Los motores eléctricos son alimentados por 9V, y uno de los microcontroladores y algunos de los circuitos integrados son alimentados por 5V. El microcontrolador principal es alimentado por 3.3V. Los puertos de salida son alimentados por 4.3V y tienen protección contra sobrecorriente. Las versiones más nuevas del robot tienen baterías recargables como los teléfonos móviles. La energía puede obtenerse de células solares que el robot puede llevar, así como de la red eléctrica de la ciudad si el robot no se mueve.
  
  **Puertos**
  Ya hemos mencionado que la unidad de control recibe datos del entorno a través de sensores, los procesa y luego transmite señales de control correspondientes a los motores. La comunicación con dispositivos periféricos se realiza a través de puertos.
  Según la dirección de los datos, los puertos pueden dividirse en puertos de entrada y salida. Hay 4 puertos de cada uno.

  La unidad de salida está compuesta de motores, y la unidad de entrada está compuesta de sensores. A menos que el usuario cambie algo al escribir el programa, por defecto los puertos de salida se dividen y se utilizan de la siguiente manera:
  - puerto A para motores medianos
  - puerto B y C para dos grandes motores combinados
  - puerto D para un gran motor
  
  Además, a menos que el usuario defina lo contrario, por defecto los puertos de entrada se asignan de la siguiente manera:
  - puerto 1 para el sensor táctil
  - puerto 2 para el sensor de temperatura o el sensor giroscópico (giroscopio)
  - puerto 3 para el sensor de color (iluminación)
  - puerto 4 para la detección de luz infrarroja o sensor ultrasónico
  
  **Motores**
  Cualquier tipo de movimiento realizado por el robot sería inimaginable sin los motores. La mayoría de las veces, hay tres servomotores disponibles, estos motores reciben señales eléctricas a través de sus puertos, lo que les permite funcionar. Los servomotores se utilizan más comúnmente cuando se deben superar fuerzas pequeñas, como abrir puertas pequeñas, transportar cargas de pequeñas dimensiones a cortas distancias, y similares. Es por eso que se utilizan principalmente para hacer robots pequeños, brazos robóticos y otros manipuladores. Los servomotores no requieren una fuente de energía fuerte, son fáciles de controlar y son confiables.

  La base de un servomotor es en realidad un motor unidireccional con un cierto número de engranajes, y su funcionamiento se basa en el principio de modulación de ancho de pulso - PWM. El microcontrolador procesa los datos sobre el factor de relleno de la señal PWM (número de 0 a 100, y de 0 a -100), y basado en ese número se determina el porcentaje de duración de la señal PWM. Los números positivos se refieren a moverse hacia adelante y los negativos a moverse hacia atrás. Además de la obvia diferencia de tamaño, los motores varían en el número de RPM (rotaciones por minuto). El motor más grande es más lento pero proporciona más potencia. El motor mediano es más rápido y más estable. Contiene tacógrafos, que proporcionan información sobre el número de rotaciones y otros datos útiles.
  
  Con el diseño de construcción adecuado y la usabilidad del programa, puedes crear diferentes mecanismos de movimiento con los cuales el robot puede moverse usando ruedas y orugas; puede saltar como una rana, moverse como un escorpión, así como atrapar y empujar objetos, y colocarlos en lugares específicos.
  
  **Sensores**
  Como los humanos, los robots necesitan sentidos para analizar su entorno.
  El robot estándar de LEGO tiene cuatro tipos de sensores:
  - ultrasónico (el que parece ojos), que se utiliza para determinar la distancia entre el robot y un obstáculo,
  - óptico (sensor de color), que, como se implica por el nombre, reacciona al nivel de luz en su entorno, es decir, detecta el color como un valor del espectro electromagnético,
  - sensor de sonido, que reacciona al nivel de sonido en su entorno; sensor táctil, que, lo adivinaste, reacciona al tacto, es decir, al botón siendo presionado,
  - sensor giroscópico (giroscopio), mide el movimiento rotacional del objeto (robot) y los cambios en su orientación.

  **Sensor Ultrasónico**
  El sensor ultrasónico es un sensor digital que mide la distancia a un objeto. Además del receptor de ultrasonidos, que es una especie de micrófono especial, este sensor también tiene un transmisor de ultrasonidos. El transmisor envía una onda ultrasónica que rebota en el obstáculo y vuelve al robot. Esta onda que regresa es captada por el receptor, que es el sensor en sí. El robot calcula la distancia a un obstáculo midiendo el tiempo transcurrido desde que se emitió la onda ultrasónica hasta que el eco de esta onda, que ha rebotado en un objeto, regresa.
  
  La distancia puede medirse en pulgadas o centímetros. Cuando se utiliza la escala en centímetros, la distancia medible está entre 3 y 250 cm, con una precisión de +/- 1 cm. Cuando se utilizan pulgadas, la distancia medible está entre 1 y 99 pulgadas, con una precisión de +/- 0.394 pulgadas. La velocidad del ultrasonido es de unos 300 m/s, y la onda sonora viaja desde el transmisor hasta el obstáculo y de regreso, cruzando una distancia que es el doble de la distancia desde el robot al obstáculo. El procesador solo necesita usar la fórmula s=v*t para calcular la distancia al obstáculo.
  
  Para una medición más precisa, hay que tener en cuenta otros aspectos, como el hecho de que la velocidad del ultrasonido en el aire depende de la temperatura ambiente y de la frecuencia del ultrasonido emitido por el transmisor asociado con el sensor. No es difícil ver que esta característica nos recuerda a un murciélago que, aunque tiene un sentido de la vista escaso, se orienta de manera inconfundible en el espacio gracias a sus eco localizadores.


    
  **Sensor Óptico**
  El sensor óptico es un sensor digital que puede detectar el color o la intensidad de la luz que entra a través de la pequeña ventana en la cara del sensor. Lee a 1 kHz/segundo.
  
  Este sensor reacciona a la luz o cambios en la luz ambiental. Anteriormente, los sensores eran en blanco y negro y podían reconocer algunos tonos de gris. Hoy en día, los sensores son más complejos y pueden reconocer el color, es decir, el nivel en el espectro electromagnético. Esto es por lo que a menudo se les llama sensores de color. Los seres humanos (a diferencia de los animales) tienen un sentido de la vista desarrollado gracias a un cerebro altamente desarrollado, que es capaz de recibir y procesar una gran cantidad de información, lo que resulta en el reconocimiento de imágenes.
  
  El sensor se puede utilizar para:
  1. Lectura de colores: el robot reconoce siete colores (negro, azul, verde, amarillo, rojo, blanco, marrón y además sin color). Por ejemplo, el robot puede ser programado para clasificar bloques de colores, decir los nombres de los colores que reconoce, o detener la acción cuando reconoce rojo.
  2. Reflexión de luz: el robot usa una lámpara para emitir luz roja y mide la intensidad de la luz reflejada por el objeto. Usa una escala de 0 (muy oscuro) a 100 (muy claro). Por ejemplo, el robot puede ser programado para moverse alrededor de una superficie blanca hasta que encuentra una superficie negra.
  3. Luz ambiental (entorno): el robot mide la fuerza de la luz recibida del entorno, por ejemplo, la luz que viene de una lámpara. Usa la misma escala que en la segunda opción. Por ejemplo, el robot puede ser programado para activar una alarma de despertador cuando sale el sol.
  
  Hay claras limitaciones cuando se trata de sensores, es decir, robots; por lo tanto, orientarse en el espacio basado en imágenes en forma de un gran número de puntos es difícil. Es por eso que este sensor, y la comunicación a través de él, es un gran desafío para los constructores.
  
  **Sensor táctil**
  Este es en realidad un interruptor, que tiene dos estados:
  - presionado (cuando el robot toca un obstáculo) o
  - liberado (cuando el sensor no está tocando ningún objeto).
  
  **Giroscopio**
  El giroscopio es un sensor digital que detecta el movimiento y los cambios en el movimiento del robot. Cuando el robot se mueve, este sensor lo presentará como el cambio en la velocidad de rotación en grados por segundo (deg/s). La tasa máxima es de 440 deg/s.
  
  Con base en estos datos, el usuario puede determinar si el robot está girando y también programar estos giros (con una precisión de +/- 3 grados para un giro de 90 grados). Para que el sensor produzca resultados precisos, es necesario mantener el robot inmóvil antes de encenderlo, para que el sensor pueda calibrarse correctamente.
  
  Además de los mencionados anteriormente, hay otros tipos de sensores disponibles, como el sensor de sonido, sensor de temperatura, sensor infrarrojo, etc.


### 3.3. Estado actual del robot y sistema de control.
  El robot cuenta con las siguientes piezas:
    - 7 Cables de red
    - 1 Sensor de ultrasonido
    - 2 Sensores de contactos
    - 1 Cable USB
    - 1 Motor extra
    - 1 sensor de giro
    - 1 sensor de colores
    
  Al robot le faltan las siguientes piezas:
    - Un cargador
    
### 3.4. APIs y lenguajes de programación: Identificar las APIs o librerías disponibles para programar los robots. Enumerar los lenguajes de programación compatibles con los robots.
### 3.5. Herramientas de desarrollo propias: Demostración de las herramientas de desarrollo propias de los robots, destacando su utilidad y funcionalidades. (Si es posible). Resumir las herramientas propias que disponen los robots para facilitar la programación y el control.
### 3.6. Sensores del robot Identificar los sensores incorporados en los robots y explicar su funcionamiento. Que compatibildiad tienes con otros sensores.
### 3.7. Práctica de identificación y uso de los sensores integrados en los robots, explicando cómo interactúan con el entorno.
### 3.8. Modelado del robot real: Realizar el modelado del robot Kuboki y EV3, en coopeliasim.
### 3.9. Programa simple de movimientos: Utilizando las herramientas propias del robot, crear un programa sencillo que indique movimientos básicos del robot, como desplazarse hacia adelante, girar a la derecha, etc.
### 3.10 Reflexión y Discusión: Sesión de reflexión donde los estudiantes comparten sus experiencias, aprendizajes y posibles mejoras en el uso del robot Kuboki en aplicaciones prácticas.
