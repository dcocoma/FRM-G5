# Laboratorio 2 A - Introducción a ROS
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

# Instalar ROS en máquina virtual
Esta práctica se realizó en un computador Windows 10. Utilizando una máquina virtual con Ubuntu 16.04.

## 1. Instalar Máquina Virtual
Instalar el software VMWare Workstation Player versión 17. El software es gratuito para uso no comercial y se puede descargar de manera gratuita en el siguiente link:

https://www.vmware.com/products/workstation-player.html

## 2. Descargar Ubuntu 16.04
Descargar el archivo .iso para instalar Ubuntu 16.04. Este archivo se consigue de manera gratuita en el siguiente link, bajo el nombre de *Desktop Image*:

https://releases.ubuntu.com/16.04/

## 3. Crear máquina virtual con Ubuntu 16.04
Abrir el software VMWare Player instalado en el paso anterior y crear una nueva máquina virtual.

![](./Imgs/Paso3.1.jpg)

Utilizar la opción de instalación *Installer disc image file (.iso)*. En *Browse...* se puede navegar por los archivos del computador para seleccionar el archivo .iso descargado anteriormente.

![](./Imgs/Paso3.2.jpg)

Rellenar la información con el nombre de usuario y contraseñas que se deseen. La contraseña colocada es la que se usa para iniciar sesión dentro de la máquina virtual.

![](./Imgs/Paso3.3.jpg)

Colocar nombre a la máquina virtual (el que se desee) y la ubicación dónde se quiere guardar la información de la máquina virtual. Se recomienda utilizar una ubicación que tenga suficiente espacio de almacenamiento.

![](./Imgs/Paso3.4.jpg)

Configurar el almacenamiento de la información de la máquina virtual siguiendo las recomendaciones de la vevntana emergente.

![](./Imgs/Paso3.5.jpg)

Revisar la instalación. Antes de continuar, hacer click en *Customize Hardware...* para incrementar la RAM de la máquina virtual y que ésta tenga un meyor rendimiento (opcional).

![](./Imgs/Paso3.6.jpg)

Si se desea un mayor rendimiento para la máquina virtual, se pueden realizar diferentes configuraciones. Se recomienda seguir las recomendaciones de la ventana emergente.

![](./Imgs/Paso3.7.jpg)

## 4. Iniciar la máquina virtual
En la interfaz inicial de VMWare, se selecciona la máquina virtual que se configuró con Ubuntu 16.04 y le damos a *Play*.

![](./Imgs/Paso4.1.jpg)

La primera vez que se inicia la máquina virtual, se debe esperar a que se realice la instalación de Ubuntu.

Al iniciarse la máquina virtual, ingresar con el usuario y contraseña creados anteriormente. Una vez la máquina virtual esté lista se debería ver de la siguiente manera:

![](./Imgs/Paso4.2.jpg)

## 5. Instalar ROS en la máquina virtual
Seguir las instrucciones para instalar ROS Noetic en Ubuntu 16.04, las cuales se encuentran en el siguiente link:

https://www.youtube.com/watch?v=Vq5fvsd896M

## 6. Verificar instalación de ROS
Para verificar si la instalación de ROS se realizó correctamente se debe hacer lo siguiente dentro de la máquina virtual:

Abrir una terminal y ejecutar los siguientes comandos:

```
sudo su
roscore
```

Si la instalación fue correcta, se obtiene lo siguiente en la terminal:

![](./Imgs/Paso6.1.jpg)

# ¿Qué es ROS?

## ROS (Robot Operating System)

ROS es un conjunto de herramientas y bibliotecas de software de código abierto para el desarrollo de aplicaciones robóticas. Aunque no es un sistema operativo en sí mismo, proporciona un marco de trabajo flexible que se ejecuta sobre Linux.

## Ventajas de ROS:

- **Arquitectura modular**: Permite dividir el desarrollo del robot en nodos independientes que se comunican eficientemente entre sí.
- **Comunidad activa**: Gran comunidad de usuarios y desarrolladores que contribuyen con paquetes, tutoriales y soporte técnico.
- **Reutilización de código**: Ofrece una amplia gama de paquetes y bibliotecas preexistentes para funciones robóticas comunes.
- **Herramientas de desarrollo**: Proporciona herramientas para visualización, simulación, depuración y análisis, facilitando el desarrollo de aplicaciones robóticas.
- **Flexibilidad y escalabilidad**: Adaptable a una variedad de plataformas y configuraciones de hardware, desde robots simples hasta sistemas complejos.
- **Interoperabilidad**: Compatible con varios lenguajes de programación y sistemas de middleware, permitiendo la integración de diferentes componentes de software y hardware.

# Comandos ROS
https://w3.cs.jmu.edu/spragunr/CS354_F17/handouts/ROSCheatsheet.pdf

## rosnode
- *rosnode cleanup*: Elimina nodos que han sido desconectados del grafo de comunicación.
- *rosnode info*: Proporciona información detallada sobre un nodo específico.
- *rosnode kill*: Detiene un nodo en ejecución.
- *rosnode list*: Lista todos los nodos actualmente en ejecución.
- *rosnode machine*: Muestra todos los nodos que se ejecutan en una máquina específica.
- *rosnode ping*: Verifica si un nodo está en línea y responde a los mensajes.

## rostopic
- *rostopic bw*: Muestra el ancho de banda utilizado por un tópico.
- *rostopic echo*: Muestra los mensajes que se publican en un tópico.
- *rostopic find*: Encuentra tópicos por su nombre.
- *rostopic hz*: Muestra la frecuencia de publicación de un tópico.
- *rostopic info*: Proporciona información detallada sobre un tópico específico.
- *rostopic list*: Lista todos los tópicos actualmente en uso.
- *rostopic pub*: Publica datos en un tópico.
- *rostopic type*: Muestra el tipo de mensajes que se publican en un tópico.

## rosservice
- *rosservice args*: Muestra los argumentos de un servicio.
- *rosservice call*: Llama a un servicio con argumentos específicos.
- *rosservice find*: Encuentra servicios por su nombre.
- *rosservice info*: Proporciona información detallada sobre un servicio específico.
- *rosservice list*: Lista todos los servicios disponibles.
- *rosservice type*: Muestra el tipo de datos que se espera que un servicio utilice.
- *rosservice uri*: Muestra la URI (Identificador de Recursos Uniforme) de un servicio.

## rosmsg
- *rosmsg list*: Lista todos los tipos de mensajes disponibles.
- *rosmsg md5*: Muestra el MD5 sum de un tipo de mensaje.
- *rosmsg package*: Muestra todos los tipos de mensajes en un paquete específico.
- *rosmsg packages*: Lista todos los paquetes que contienen tipos de mensajes.
- *rosmsg show*: Muestra la definición de un tipo de mensaje.

## rospack
- *rospack find*: Encuentra la ubicación de un paquete.
- *rospack list*: Lista todos los paquetes disponibles.
- *rospack info*: Proporciona información detallada sobre un paquete específico.

