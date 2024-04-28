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
  1.Abrir una terminal dentro de la máquina virtual y posicionarse en el lugar donde se desea crear el workspace, en este caso en la carpeta Documents/rosproyects/ creada anteriormente.
  
  2. Se crea un espacio de trabajo (workspace) como un directorio en el computador, utilizando el comando mkdir en consola para crear la carpeta.
    mkdir Kobuki_ws
  
  3. Se crea una carpeta "src"dentro del workspace e ingresamos a ese directorio:
    cd Kobuki_ws
    mkdir src
    cd src
  
  4. Una vez adentro, se clonan los repositorios a través de los comandos:
    git clone https://github.com/yujinrobot/kobuki
    git clone https://github.com/yujinrobot/yujin_ocs
  
  5. Ejecutamos el comando de compilación:
    catkin_make
  
  6. Se prende el Kobuki con el switch ubicado en la parte lateral derecha, se conecta mediante el puerto USB al computador y se indica que debe realizar la conección con la máquina virtual y no con el computador principal.
  
  7. En la carpeta kobuki_ws, se ejecuta el comando para configurar finalmente el espacio:
    source devel/setup.bash
  
  8. Se ejecuta la conexión utilizando el comando roslaunch, el script minimal.launch ubicado en el paquete kobuki_node para generar el enlace con el robot:
    cd
    roslaunch kobuki_node minimal.launch --screen
  Se debe ver en la terminal todos los nodos iniciados para la comunicación y los diagnosticos del robot como se muestra a continuación:
  ![image](https://github.com/dcocoma/FRM-G5/assets/73080388/9df0796f-1e71-4192-931e-3fd6dcafa30c)
  ![image](https://github.com/dcocoma/FRM-G5/assets/73080388/b900cc96-2108-4282-9fbf-ca1bae065f28)

  9. 
