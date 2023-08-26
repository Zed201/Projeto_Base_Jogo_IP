# Script parafazer a instalação do raylib, deve ser executado assim '. ./inst.sh'
# Primeiro tem que instalar sudo apt install build-essential git
sudo apt install cmake make libasound2-dev mesa-common-dev libx11-dev libxrandr-dev libxi-dev xorg-dev libgl1-mesa-dev libglu1-mesa-dev
git clone https://github.com/raysan5/raylib
cd raylib
mkdir build && cd build
cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo make install
# Testar para ver se precisa sudo cp /usr/local/lib/libraylib.so.450 /usr/lib/libraylib.so.450
cd ../.. && rm -rf raylib;
echo "Instalacao Concluida"