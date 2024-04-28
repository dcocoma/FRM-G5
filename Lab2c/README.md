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

En un computador con sistemaoperativo windows 10, se implemtó una máquina virtual de Ubuntu 64 bits para simular el software de linux y ejecutar la instalación de ROS como se muestra en el Lab2a.

Una vez configurado el entorno se realizó la conección con el robot kobuki siguiendo los siguientes pasos:
  
  1. Abrir una terminal dentro de la máquina virtual y posicionarse en el lugar donde se desea crear el workspace, en este caso en la carpeta Documents/rosproyects/ creada anteriormente.
  
  2. Se crea un espacio de trabajo (workspace) como un directorio en el computador, utilizando el comando mkdir en consola para crear la carpeta.
```
mkdir Kobuki_ws
```
  
  4. Se crea una carpeta "src"dentro del workspace e ingresamos a ese directorio:

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
  8. Se prende el Kobuki con el switch ubicado en la parte lateral derecha, se conecta mediante el puerto USB al computador y se indica que debe realizar la conección con la máquina virtual y no con el computador principal.
  
  9. En la carpeta kobuki_ws, se ejecuta el comando para configurar finalmente el espacio:
```
source devel/setup.bash
```  
  10. Se ejecuta la conexión utilizando el comando roslaunch, el script minimal.launch ubicado en el paquete kobuki_node para generar el enlace con el robot:
```
cd
roslaunch kobuki_node minimal.launch --screen
```
  Se debe ver en la terminal todos los nodos iniciados para la comunicación y los diagnosticos del robot como se muestra a continuación:
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

  Es importante presionar el comando ctrl + c luego de cada lectura de eventos ya que esta función lo que hace es abrir un nodo para recibir información de manera constante y queda en operación hasta que se le de la orden de cerrar, si se desea utilizar dos servicios al tiempo se puede dejar la terminal corriendo y ejecutar un nuevo comando en otra terminal.

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
  13. Finalemnte se puede controlar la velocidad el robot con las teclas del computador ejecutando el programa de `safe_keyop.launch` del paquete `kobuki_keyop` : 
```
roslaunch kobuki_keyop safe_keyop.launch --screen
```
  Con este programa se ejecutan los nodos de los sensores para que este responda ante eventualidades y se inicia el control, el funcionamiento de este tipo de control es mediante la configuración de la velocidad lineal y angular del robot, se muestrabn los valores actuales de vel lineal y vel angular cada vez que una tecla es presionada, si la tecla derecha es presionada se incrementa en 0.33 la velovidad angular del robot en sentido horario y para hacer que se detenga es necesario presionar la tecla izquierda para dejar esta velocidad nuevamente en 0, de esta manera se puede incrementar la velocidad angular presionando varias veces en un mismo sentido y disminuir o cambiar totalmente la dirección presionando en el sentido contrario.

  De igual forma con la velocidad lineal, con la fecha superior se aumenta la velocidad 0.33 unidades y la inferior la disminuye para poder parar el movimiento o iniciarlo hacia atrás.
  
![image](https://github.com/dcocoma/FRM-G5/assets/73080388/53a73a1c-7193-429a-a05c-1fff8269edaf)


