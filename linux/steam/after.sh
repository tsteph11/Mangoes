#This is not a script just a series of commands to run after steam is installed to get other games such as megamanx legacy colleciton to run
sudo dpkg --add-architecture i386
sudo apt update
#replace the 535 with the major version you get from running nvidia-settings
sudo apt install libnvidia-gl-535:i386
