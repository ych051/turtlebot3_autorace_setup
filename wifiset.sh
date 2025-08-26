echo "[Update the package lists]"

sudo apt update -y
sudo apt upgrade -y
git clone https://github.com/HRex39/rtl8852be.git
cd $HOME/rtl8852be
make -j8
sudo make install
sudo modprobe 8852be
exit 0
