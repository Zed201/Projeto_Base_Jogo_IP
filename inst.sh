# Script para fazer a instalação do raylib, deve ser executado assim '. ./inst.sh'

# Primeiro tem que instalar git e o gcc oque pode ser feito com 'sudo apt install build-essential git wget'

sudo apt install cmake make libasound2-dev mesa-common-dev libx11-dev libxrandr-dev libxi-dev xorg-dev libgl1-mesa-dev libglu1-mesa-dev
git clone https://github.com/raysan5/raylib
cd raylib
mkdir build && cd build
cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo make install
cd ../.. && rm -rf raylib;
echo "Instalacao Concluida"