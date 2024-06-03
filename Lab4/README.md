# Laboratorio 4 - Navegación basada en comportamientos
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

Tabla de Contenidos
---

- [Consulta bibliográfica previa](#consulta-bibliográfica-previa)
   - [Características navegación](#características-navegación)
   - [Investigaciones robotistas](#investigaciones-robotistas)
   - [Algoritmos planeación de rutas](#algoritmos-planeación-de-rutas)
   - [Algoritmos Bug](#algoritmos-bug)
   - [Maze algorithm](#maze-algorithm)
- [Misión 1](#misión-1)
   - [Preparación de misión 1](#preparación-de-misión-1)
   - [Algoritmo de solución 1](#algoritmo-de-solución-1)
   - [Video del resultado 1](#video-del-resultado-1)
- [Misión 2](#misión-2)
   - [Preparación de misión 2](#preparación-de-misión-2)
   - [Algoritmo de solución 2](#algoritmo-de-solución-2)
   - [Video del resultado 2](#video-del-resultado-2)

# Consulta bibliográfica previa

## Características navegación
**Al menos dos características de la navegación planeada y de la navegación basada en comportamientos y su influencia en el tipo de respuesta del robot.**

### Navegación planeada
*Características:*

1. Uso de mapa conocido: Utiliza un mapa del entorno previamente conocido. Puede estar basado en modelos geométricos, topológicos o probabilísticos.

2. Ruta pre-calculada: La ruta se calcula antes de que el robot comience a moverse.

3. Optimización de eficiencia: Permite evitar obstáculos conocidos minimizando el tiempo de viaje o el consumo de energía.

4. Limitación en entornos dinámicos: Puede tener dificultades para adaptarse si el entorno cambia sin replanificar.

*Respuesta del robot:*

Este tipo de navegación hace que el robot realice recorridos óptimos y sin errores, siempre y cuando se haya logrado modelar su entorno de manera precisa. Cualquier cambio en el entorno del robot generará un mal comportamiento ya que el robot no se adapta a cambios en su entorno. El movimiento del robot está predefinido y éste lo hará sin importar lo que suceda a su alrededor, y sin revisar si se está realizando correctamente. Esta navegación es exitosa siempre que se logre tener un entorno de misión muy bien controlado.

### Navegación basada en comportamientos
*Características:*

1. Reactividad en tiempo real: Toma decisiones basadas en reglas simples y percepciones del entorno en tiempo real, que se detectan mediante los sensores del robot.

2. Adaptabilidad al entorno: Gran adaptabilidad a cambios en el entorno. Ideal para entornos desconocidos o dinámicos.

3. Comportamientos simples: Utiliza comportamientos simples como "evitar obstáculos" o "seguir una pared". Permite combinar comportamientos simples para crear comportamientos complejos.

*Respuesta del robot:*

Este tipo de navegación hace que el robot utilice sus sensores para tomar decisiones de movimiento en tiempo real. El robot tiene predefinidas ciertas reglas a ejecutar en situaciones específicas. Cuando haya un cambio en el entorno del robot, este detectará dicho cambio y actuará en base a ello según las reglas que tenga programadas. El movimiento del robot siempre está retroalimentado por sus sensores para saber si va bien, o si debe cambiar de movimiento. Esta navegación es muy útil, ya que permite al robot adaptarse hasta cierto punto a diferentes entornos más realistas y menos controlados. 

## Investigaciones robotistas
**Investigaciones destacadas y robots desarrollados por los robotistas Rodney Brooks y Mark Tilden.**

### Rodney Brooks
En el siguiente link se encuentra toda la información relevante del robotista Rodney Brooks: https://people.csail.mit.edu/brooks/index.html.

*Investigaciones destacadas:*

- Subsumption Architecture: Reaccionar al mundo mediante tareas específicas y simples.

- Robot Intelligence: Inteligencia artifical aplicada en la robótica para entornos con humanos, o simulando a los humanos.

- Artificial Life: Agentes robóticos como si fueran vida y robots humanoides.

- Robot Motion Planning: Planeación y control de movimiento y de tareas. Uso de visión de máquina.

*Robots desarrollados:*

- Genghis: Robot hexápodo *insect-like*.

![](./Imgs/Genghis.jpg)

- Allen: Primer robot basado en Subsumption Architecture. 

- MIT Mobile Robots: Brooks trabajó con estos robots y desarrolló algunos de ellos. 

![](./Imgs/RobotsBrooks.jpg)

Fila de atrás, izquierda a derecha: Allen, Herbert, Seymour y Toto. Fila delantera, de izquierda a derecha: Tito, Genghis, Squirt (muy pequeño) Tom y Jerry, y Labnav.

### Mark Tilden

*Investigaciones destacadas:*

- Biomimesis: Robots e inteligencias artificales inspirados en la biología.

- BEAM: Robots: Mezcla de Biología, Electrónica, Estética (aesthetic) y Mecánica para crear y diseñar robots.

*Robots desarrollados:*

- WowWee Robosapien: Robot humanoide de juguete.

![](./Imgs/Robosapien.jpg)

- Robótica BEAM: Múltiples robots y tecnologías que utilizan circuitos analógicos simples (no microcontroladores).


## Algoritmos planeación de rutas
**Mencione al menos tres de los algoritmos de planeación de rutas para espacios con obstáculos.**

La mayoría de algoritmos de planeación de rutas se basan en la Teoría de Grafos (rama Matemática), en donde las posibles ubicaciones del robot serán los nodos y los caminos a recorrer los vértices. En los grafos se pueden colocar pesos a los vértices para modelar una situación real como los obstáculos. Los algoritmos suelen enfocarse a encontrar el camino más corto SIN OBSTÁCULOS, sin embargo, con pequeñas modificaciones se pueden adaptar para encontrar el camino más corto evitando obstáculos.

1. **Dijkstra**: Encuentra el camino más corto desde un nodo inicial a todos los demás nodos en un grafo ponderado. Es ideal para grafos con pesos no negativos.

2. **A***: Utiliza una heurística para mejorar la eficiencia de la búsqueda del camino más corto. Es una versión informada del algoritmo de Dijkstra, lo que lo hace más rápido en muchos casos.

3. **Bellman-Ford**: Calcula el camino más corto desde un nodo a todos los demás nodos en un grafo ponderado, y puede manejar pesos negativos. Es útil cuando existen ciclos con peso negativo en el grafo.

4. **Breadth-First Search (BFS)**: Encuentra el camino más corto en un grafo no ponderado. Es útil para grafos donde todas las aristas tienen el mismo peso.

5. **Depth-First Search (DFS)**: Explora tanto como sea posible a lo largo de cada rama antes de retroceder. No garantiza el camino más corto, pero es útil para explorar todos los posibles caminos.

6. **Algoritmo de Johnson**: Encuentra los caminos más cortos entre todos los pares de nodos en un grafo, combinando las técnicas de Dijkstra y Bellman-Ford.


## Algoritmos Bug
**Describa brevemente los algoritmos Bug 0, Bug 1 y Bug 2.**

Los algoritmos Bug se basan en las siguientes suposiciones:

1. El robot es un punto en un espacio 2D.

2. Los obstáculos son desconocidos.

3. Se define punto de partida y punto objetivo.

4. El robot puede detectar los obstáculos desde alguna distancia conocida.

5. El robot siempre conoce la ubicación del punto objetivo.

### Bug 0

El robot se mueve hacia el objetivo. Si encuentra un obstáculo, lo rodea hasta que pueda seguir moviéndose hacia el objetivo, y continúa moviéndose hacia el objetivo.

![](./Imgs/Bug0.jpg)

Tomado de https://ucsb.app.box.com/v/LecturesRobotics.

### Bug 1

El robot se mueve hacia el objetivo. Si encuentra un obstáculo, lo rodea hasta encontrar el punto con menor distancia al objetivo, va a dicho punto y continúa moviéndose hacia el objetivo.

![](./Imgs/Bug1.jpg)

Tomado de https://ucsb.app.box.com/v/LecturesRobotics.

### Bug 2

El robot traza una línea recta que le permita llegar al objetivo. El robot se mueve hacia el objetivo siguiendo la línea recta. Si encuentra un obstáculo, lo rodea hasta volver a encontrar un punto sobre la línea recta original (que estará más cerca al objetivo), y continuará moviéndose hacia el objetivo.

![](./Imgs/Bug2.jpg)

Tomado de https://ucsb.app.box.com/v/LecturesRobotics.

## Maze algorithm
**Describa al menos un algoritmo de solución de un laberinto (maze algorithm) aplicado en robótica móvil.**

# Misión 1

## Preparación de misión 1

Se inició preparando el EV3 para trabajar con 3 sensores, dos sensores ultarsónicos de proximidad y un sensor de color.
Un sensor de proximidad está ubicado orientado hacia el frentee del robot, el segundo apotando hacia el lateral izquierdo y el sensor de color apuntando al suelo lo más cerca posible como se muestra en la siguiente foto.

![WhatsApp Image 2024-06-02 at 20 02 45](https://github.com/dcocoma/FRM-G5/assets/73080388/4e02d359-4b3c-4d98-ab73-a610cbbd4f34)

A continuación se adecuó la pista para ejecutar la misión, se colocó una cinta aislante negra a lo largo de la pista y al final de ella una pieza lego de color verde, se colocaron dos obstaculos sobre la cinta negra como se muestra en la siguiente foto para obstaculizar el trayecto y se posicionó el EV3 en el extremo sin pieza orientado hacia la cinta. 

![WhatsApp Image 2024-06-02 at 20 02 19](https://github.com/dcocoma/FRM-G5/assets/73080388/461213d8-5ff2-47c3-9758-91dcd2c5a73c)

## Algoritmo de solución 1

Se descibirá a continuación los pasos seguidos para implementar el algoritmo.

Se utilizó la herramienta de lego mindstorms para programar la rutina del EV3 mediante bluetooth.

Al inicio del programa se le indica al robot que busque la linea negra, avanzando hasta que el sensor detecte el color negro, para luego inicializar el giroscopio en 0° y que quede en espera. 

![WhatsApp Image 2024-06-02 at 20 05 15](https://github.com/dcocoma/FRM-G5/assets/73080388/79067310-0f75-48ad-bdb0-7d2031075660)
![WhatsApp Image 2024-06-02 at 20 05 15 (1)](https://github.com/dcocoma/FRM-G5/assets/73080388/80581bbe-b6b1-4a92-839e-581f5eb4681c)

La rutina empieza al presionar el botón del centro, al hacerlo entra en un bucle que para una vez el color verde es detectado.
Dentro de este bucle se llama la función "seguir linea" siempre y cuando el sensor de proximidad orientado hacia el frente no detecte un obstaculo a menos de 15 centimetros, una vez detecta el obstaculo llama la función "Esquivar obstaculo".

Así se garantiza que siga la linea negra siempre que no tenga ubstaculos al frente y se detenga al llegar al indicador verde de meta.

![WhatsApp Image 2024-06-02 at 20 05 15 (3)](https://github.com/dcocoma/FRM-G5/assets/73080388/ae8d3e9d-e935-4f88-b3c4-883edc287cc8)

La función se seguir linea opera mediante un condicional, si detecta la linea negra en el sesnsor se inicia un movimiento de avanze hacia la derecha y cuando no es detectado se incia un movimiento de avanze hacia la izquierda, de esta forma se mantiene el rumbo sobre el extremo derecho de la cinta e impide que se pierda hacia la izquierda de la cinta.

La función de esquivar obstáculo inicia rotando el robot hacia la derecha 80 grados, luego entra en un ciclo que funciona siempre que no se detecte nuevamente la cinta en el suelo, dentro del ciclo, el robot va a estar midiendo constantemente el sensor de proximidad orientado hacia la parte lateral izquierda, si detecta un objeto a menos de 10 centimetros va a continuar derecho y si deja de detectar el objeto empieza a aproximarze hacia el rotando hacia la izquierda intentando rodearlo por la derecha siempre.

![WhatsApp Image 2024-06-02 at 20 05 16 (1)](https://github.com/dcocoma/FRM-G5/assets/73080388/75b17f1f-0640-4824-aec1-6573cdc9f78e)
![WhatsApp Image 2024-06-02 at 20 05 15 (2)](https://github.com/dcocoma/FRM-G5/assets/73080388/ced06a0b-1215-4059-b89e-4a2e552f30c4)

Se cre una función para rotar el robod determinados ángulos utilizando el giroscopio.

![WhatsApp Image 2024-06-02 at 20 05 16](https://github.com/dcocoma/FRM-G5/assets/73080388/e980b3e4-3c1b-44ef-a343-5dcdded90b23)

## Video del resultado 1



# Misión 2

## Preparación de misión 2

## Algoritmo de solución 2

## Video del resultado 2
