import rospy
from kobuki_msgs.msg import CliffEvent, Sound
import subprocess

def callback (data):
    rospy.loginfo("Evento de precipicio detectado: %s", data)
    play_sound(6) #Ejecutar sonido cuando haya un precipicio

def listener():
    rospy.init_node('cliff_listener', anonymous=True)
    rospy.Subscriber("/mobile_base/events/cliff", CliffEvent, callback)
    rospy.spin()

def play_sound(sound_value):
    pub_sound = rospy.Publisher('/mobile_base/commands/sound', Sound, queue_size=10)
    sound_msg = Sound()
    sound_msg.value = sound_value
    pub_sound.publish(sound_msg)

def launch_roslaunch_file(package_name, launch_file):
    command = ['roslaunch', package_name, launch_file, '--screen']
    subprocess.Popen(command)

if __name__ == '__main__':
    try:
        # Lanzar el archivo safe_keyop.launch
        
        launch_roslaunch_file('kobuki_keyop', 'safe_keyop.launch')
        listener()
        # Escuchar eventos de precipicio
    except rospy.ROSInterruptException:
        pass
    
    
    