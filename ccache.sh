echo "***** Enviroment setup.. *****"
sudo apt-get update
sudo apt install git ccache nano sshpass neofetch zsh -y
sudo /usr/sbin/update-ccache-symlinks
echo export PATH="/usr/lib/ccache:$PATH" | tee -a ~/.bashrc
echo export USE_CCACHE=1 | tee -a ~/.bashrc
echo export CCACHE_EXEC=$(command -v ccache) | tee -a ~/.bashrc
echo ccache -M 100G | tee -a ~/.bashrc
source ~/.bashrc && echo $PATH
sleep 1
