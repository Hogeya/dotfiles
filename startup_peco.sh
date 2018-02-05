#######################################
#*
#* peco | version 0.5.1
#*
#######################################

cd
mkdir -p work
cd work
wget https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_amd64.tar.gz
tar -xzf peco_linux_amd64.tar.gz
sudo tar xzvf peco_linux_amd64.tar.gz
cd peco_linux_amd64
sudo chmod +x peco
sudo cp /usr/local/bin

# peco --version
