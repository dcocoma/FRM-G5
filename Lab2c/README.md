# Laboratorio 2 C - ROS y Kuboki
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

# Conección ROS - Kobuki.

En un computador con sistema operativo Windows 10, se implementó una máquina virtual de Ubuntu 64 bits para simular el software de Linux y ejecutar la instalación de ROS como se muestra en el Lab2a.

Una vez configurado el entorno se realizó la conexión con el robot kobuki siguiendo los siguientes pasos:
  
  1. Abrir una terminal dentro de la máquina virtual y posicionarse en el lugar donde se desea crear el workspace, en este caso en la carpeta Documents/rosproyects/ creada anteriormente.
  
  2. Se crea un espacio de trabajo (workspace) como un directorio en el computador, utilizando el comando mkdir en consola para crear la carpeta.
```
mkdir Kobuki_ws
```
  
  4. Se crea una carpeta "src" dentro del workspace e ingresamos a ese directorio:

```
cd Kobuki_ws
mkdir src
cd src
```
  
  6. Una vez adentro, se clonan los repositorios a través de los comandos:
 
```
git clone https://github.com/yujinrobot/kobuki
git clone https://github.com/yujinrobot/yujin_ocs
```
  
  7. Ejecutamos el comando de compilación:
```
catkin_make
``` 
  8. Se prende el Kobuki con el switch ubicado en la parte lateral derecha, se conecta mediante el puerto USB al computador y se indica que debe realizar la conexión con la máquina virtual y no con el computador principal.
  
  9. En la carpeta kobuki_ws, se ejecuta el comando para configurar finalmente el espacio:
```
source devel/setup.bash
```  
  10. Se ejecuta la conexión utilizando el comando roslaunch, el script minimal.launch ubicado en el paquete kobuki_node para generar el enlace con el robot:
```
cd
roslaunch kobuki_node minimal.launch --screen
```
  Se debe ver en la terminal todos los nodos iniciados para la comunicación y los diagnósticos del robot como se muestra a continuación:
  ![image](https://github.com/dcocoma/FRM-G5/assets/73080388/9df0796f-1e71-4192-931e-3fd6dcafa30c)
  ![image](https://github.com/dcocoma/FRM-G5/assets/73080388/b900cc96-2108-4282-9fbf-ca1bae065f28)

  11. Para ver cuales comandos están disponibles para la interacción con el robot se puede ejecutar el comando `rostopic list` para visualizar los comandos de interacción.
```
 rostopic list
/diagnostics
/diagnostics_agg
/diagnostics_toplevel_state
/joint_states
/mobile_base/commands/digital_output
/mobile_base/commands/external_power
/mobile_base/commands/led1
/mobile_base/commands/led2
/mobile_base/commands/motor_power
/mobile_base/commands/reset_odometry
/mobile_base/commands/sound
/mobile_base/commands/velocity
/mobile_base/debug/raw_data_command
/mobile_base/debug/raw_data_stream
/mobile_base/events/bumper
/mobile_base/events/button
/mobile_base/events/cliff
/mobile_base/events/digital_input
/mobile_base/events/power_system
/mobile_base/events/robot_state
/mobile_base/events/wheel_drop
/mobile_base/sensors/bump_pc
/mobile_base/sensors/core
/mobile_base/sensors/dock_ir
/mobile_base/sensors/imu_data
/mobile_base/sensors/imu_data_raw
/mobile_base/version_info
/odom
/rosout
/rosout_agg
/tf
```
  Con estos comandos se puede leer el estado de la batería, el estado de los distintos sensores y las entradas digitales.
  
  12. Para probar la conexión y el control podemos ejecutar varios comandos tipo `echo` para leer los eventos que detecten los distintos sensores como el bumper que detecta al chocar con algún obstáculo, el wheel_drop que siente si las ruedas son descolgadas, el cliff que detecta si hay superficie en los extremos debajo del robot, la IMU que está enviando los datos de orientación, velocidad angular y velocidad lineal y también comandos tipo `pub` para enviar ordenes al robot y modificar su velocidad, posición, orientación, el estado de los leds y sonidos por el parlante.

  Es importante presionar el comando Ctrl + C luego de cada lectura de eventos ya que esta función lo que hace es abrir un nodo para recibir información de manera constante y queda en operación hasta que se le dé la orden de cerrar, si se desea utilizar dos servicios al tiempo se puede dejar la terminal corriendo y ejecutar un nuevo comando en otra terminal.

  Se muestran algunos comandos que se pueden ejecutar con el robot.
```
rostopic echo /mobile_base/events/bumper
rostopic echo /mobile_base/events/wheel_drop
rostopic echo /mobile_base/sensorrostopic pub /mobile_base/commands/led1 kobuki_msgs/Led "value: 1"
rostopic pub /mobile_base/commands/led1 kobuki_msgs/Led "value: 0"
rostopic pub /mobile_base/commands/sound kobuki_msgs/Sound "value: 6"
rostopic pub /mobile_base/commands/velocity geometry_msgs/Twist "linear:
x: 0.1
y: 0.0
z: 0.0
angular:
x: 0.0
y: 0.0
z: 0.0"
```
  13. Finalemnte se puede controlar la velocidad el robot con las teclas del computador ejecutando el programa `safe_keyop.launch` del paquete `kobuki_keyop` : 
```
roslaunch kobuki_keyop safe_keyop.launch --screen
```
  Con este programa se ejecutan los nodos de los sensores para que este responda ante eventualidades y se inicia el control, el funcionamiento de este tipo de control es mediante la configuración de la velocidad lineal y angular del robot, se muestran los valores actuales de vel lineal y vel angular cada vez que una tecla es presionada, si la tecla derecha es presionada se incrementa en 0.33 la velocidad angular del robot en sentido horario y para hacer que se detenga es necesario presionar la tecla izquierda para dejar esta velocidad nuevamente en 0, de esta manera se puede incrementar la velocidad angular presionando varias veces en un mismo sentido y disminuir o cambiar totalmente la dirección presionando en el sentido contrario.

  De igual forma con la velocidad lineal, con la flecha superior se aumenta la velocidad 0.33 unidades hacia el frente y la inferior la disminuye para poder parar el movimiento o iniciarlo hacia atrás.
  
![image](https://github.com/dcocoma/FRM-G5/assets/73080388/53a73a1c-7193-429a-a05c-1fff8269edaf)

# Ejercicio de revisión

1. Realice una investigación acerca del robot TurtleBot2 y su relación con la base Kobuki.

  El TurtleBot2 es un kit de desarrollo de robots de código abierto diseñado para aplicaciones móviles. Esta segunda generación del TurtleBot incluye una base Kobuki, que es fundamental para su operación y funcionalidad. La base Kobuki permite la integración de componentes como sensores y actuadores, haciendo del TurtleBot2 una plataforma ideal para la educación y la investigación en robótica a bajo costo [1.1].

  *Sensores:*
  - Sensor Kinect: Usado para la visión en 3D y mapeo del entorno.
  - Giroscopio: Integrado en la base Kobuki para detectar cambios de orientación y mejorar la navegación.
  - Sensores de choque y caída: Incluidos en la base Kobuki para evitar colisiones y caídas.
  - Encoders de rueda: Para medir la distancia recorrida y la velocidad de las ruedas, ayudando en la localización y mapeo.

  *Actuadores:*
  - Base de movimiento Kobuki: Permite el desplazamiento del robot controlando las ruedas para manejar direcciones y velocidades específicas.
  - Brazo robótico opcional: Puede ser añadido para manipulación de objetos y tareas específicas, aunque no viene por defecto con el kit básico.

  El sistema del TurtleBot2 incluye software que se ejecuta sobre ROS (Robot Operating System)[1.2], proporcionando un entorno de desarrollo robusto para aplicaciones robóticas. Este robot se comercializa como una solución accesible y está especialmente configurado para ser usado directamente desde su ensamblaje, permitiendo a los usuarios empezar a experimentar y aprender sobre robótica con un mínimo de configuración previa [1.3].

### Referencias

  1.1. TurtleBot.com. (n.d.). TurtleBot2. Retrieved April 28, 2024, from [https://www.turtlebot.com/turtlebot2/](https://www.turtlebot.com/turtlebot2/)
  
  1.2. ROS Wiki. (n.d.). Kobuki Base - TurtleBot Tutorials/Indigo. Retrieved April 28, 2024, from [http://wiki.ros.org/turtlebot/Tutorials/indigo/Kobuki%20Base](http://wiki.ros.org/turtlebot/Tutorials/indigo/Kobuki%20Base)
  
  1.3. TurtleBot.com. (n.d.). About TurtleBot. Retrieved April 28, 2024, from [https://www.turtlebot.com/about/](https://www.turtlebot.com/about/)
  

2. ¿Para que sirve los sensores cliff en el Kobuki?¿Como leer un evento de dicho sensor?
Los sensores de acantilado, también conocidos como sensores "cliff", en la base Kobuki son esenciales para la navegación segura de robots como el TurtleBot2, especialmente en entornos donde hay riesgo de caídas, como escaleras o cambios bruscos de nivel. Estos sensores están diseñados para detectar caídas potenciales, permitiendo al robot evitar accidentes al acercarse a bordes peligrosos.

### Función de los Sensores Cliff:
  Los sensores cliff utilizan tecnología infrarroja para medir la distancia hasta el suelo continuamente. Si la distancia medida excede un umbral específico—indicativo de que el borde de una superficie elevada ha sido alcanzado—el sensor envía una señal al sistema de control del robot para que detenga el movimiento o cambie de dirección, evitando así que el robot caiga o se dañe.
  
  ### Leer un Evento del Sensor Cliff:
  Para leer un evento del sensor cliff en un robot que utiliza la base Kobuki y está programado con ROS (Robot Operating System), se puede hacer de la siguiente manera:
  
  a. **Suscripción a un Tema (Topic) de ROS**: Los eventos de los sensores cliff son publicados en un tema específico dentro del ecosistema ROS. Generalmente, este tema podría ser algo como `/mobile_base/events/cliff`.
     
  b. **Lectura de Mensajes**: Al suscribirse a ese tema, puedes recibir mensajes que indican si el sensor ha detectado un "cliff". Estos mensajes suelen contener datos como la posición del sensor que detectó el cliff (izquierda, derecha, centro) y un valor booleano que indica si se ha detectado o no un cliff.
  
  c. **Programación del Manejo de Eventos**: Utilizando callbacks en tu código ROS, puedes definir respuestas específicas cuando un evento cliff es detectado, como detener el robot, retroceder, o emitir una alerta.
  
  Ejemplo de código en ROS para manejar eventos de sensores cliff podría ser algo así:
  ```python
  #!/usr/bin/env python
  import rospy
  from kobuki_msgs.msg import CliffEvent
  
  def cliff_callback(data):
      if data.state == CliffEvent.CLIFF:
          rospy.loginfo("Cliff Detected! Stopping robot...")
          # Código para detener o modificar la trayectoria del robot
  
  def listener():
      rospy.init_node('cliff_detector', anonymous=True)
      rospy.Subscriber("/mobile_base/events/cliff", CliffEvent, cliff_callback)
      rospy.spin()
  
  if __name__ == '__main__':
      listener()
  ```
  
  Este script de Python para ROS se suscribe al tema del sensor cliff y define una función de callback que se activa cuando se detecta un cliff, proporcionando una base para implementar medidas de seguridad reactivas. 

3. Construya un archivo en Python que permita hacer la lectura de la información del sensor cliff y active un sonido al ocurrir un evento con ese sensor. Active también el modo de teleoperación por teclado al mismo tiempo para controlar el movimiento del Kobuki.

# Creación código python.

Se crea un código en python para leer los eventos detecytados por el sensor "cliff" que lee si hay una posible caida al no detectar suelo en los extremos debajo del robot.

Se instala el entorno de programación Visual Studio Code para escribir el código, utilizando el programa de ubuntu software y buscando el programa vscode para darle instalar como se muestra a continuación:

![image](https://github.com/dcocoma/FRM-G5/assets/73080388/ff3b001e-812a-4f71-b752-93815c794453)

Una vez abierto el programa se instala la extención de python para tener la ayuda de comandos de python y se crea el programa fristtry.py que se va a guardar en una nueva carpeta creada en el espacio de trabajo de kobuki_ws/src/yujin_ocs/pythonscritps

Se desea construir un archivo en Python que permita hacer la lectura de la información del sensor cliff y active un sonido al ocurrir un evento con ese sensor y que active también el modo de teleoperación por teclado al mismo tiempo para controlar el movimiento del Kobuki.

Se importa la librería rospy para poder establecer la conección con ROS desde python, las funciones CliffEvent y Sound de la librería kobuki_msgs.msg para interactuar con el robot con los comandos previamente vistos y la librería subprocess para lanzar el programa `safe_keyop.launch` 

A continuación se crean 4 funciones:
  1. callback: Esta función se ejcuta cuando un evento de cliff es recibido y llama la función play_sound.
  2. listener: Esta función ejecuta un nodo de comunicación que escucha los eventos del sensor cliff y de ser así envía el mensaje a la función callback.
  3. Play_sound: esta función lanza un mensaje al robot para ejecutar un sonido.
  4. launch_roslaunch_file: Esta función lanza el archivo `safe_keyop.launch` para iniciar el control con las teclas

Finalmente se crea la función principal main donde dentro de un try catch se llama primero la función `launch_roslaunch_file` y posteriormente la función `listener()`.
Este archivo se anexa en el Lab2c par su visualización.

# Ejecución programa.

Se ejecuta el programa de la siguiente manera, primero se inicia la conexión con el robot kobuki mediante el roslauanch en la consola 
```
roslaunch kobuki_node minimal.launch --screen
```
Se abre otra consola y se va hasta la ubicación del archivo python y se ejecuta el archivo con el comando python - el nombre del archivo.
```
cd Documents/rosproyects/kobuki_ws/src/yujin_ocs/pythonscripts
python firsttry.py
```
Finalmente se puede controlar el robot con las teclas y al estar cerca de un precipicio se ejecuta un sonido.

# Evidencia

[https://youtu.be/NCzT87E5tAg](https://www.youtube.com/watch?v=NCzT87E5tAg)
