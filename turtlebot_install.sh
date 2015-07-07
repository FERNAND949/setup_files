mkdir ~/rocon
cd ~/rocon
wstool init -j5 src https://raw.github.com/robotics-in-concert/rocon/indigo/rocon.rosinstall
source /opt/ros/indigo/setup.zsh
rosdep install --from-paths src -i -y
catkin_make

mkdir ~/kobuki
cd ~/kobuki
wstool init src -j5 https://raw.github.com/yujinrobot/yujin_tools/master/rosinstalls/indigo/kobuki.rosinstall
source ~/rocon/devel/setup.zsh
rosdep install --from-paths src -i -y
catkin_make

mkdir ~/turtlebot
cd ~/turtlebot
wstool init src -j5 https://raw.github.com/yujinrobot/yujin_tools/master/rosinstalls/indigo/turtlebot.rosinstall
source ~/kobuki/devel/setup.zsh
rosdep install --from-paths src -i -r -y
catkin_make

rosrun kobuki_ftdi create_udev_rules


