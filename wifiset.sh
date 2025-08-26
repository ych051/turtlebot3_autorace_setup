echo "PRESS [ENTER] TO CONTINUE THE INSTALLATION"
echo "IF YOU WANT TO CANCEL, PRESS [CTRL] + [C]"
read

echo "[Update the package lists]"

sudo apt update
sudo apt upgrade -y

echo "[Wifi Setting Start]"

sudo apt install build-essential

git clone https://github.com/HRex39/rtl8852be.git

cd $HOME/rtl8852be
make -j8
sudo make install
sudo modprobe 8852be
exit 0
