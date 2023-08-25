### Se for trocar o nome do arquivo princial so troca o nome dele aqui, no caso troca index por main...
### Make para usar o raylib, para instalar a raylib usa o comando "make ray-init", depois so executar make direto que ele sempre vai compilar(na pasta) e exeuctar
Bin=index
all:
	echo "Executando Build"
	mkdir Build
	gcc $(Bin).c -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o ./Build/$(Bin)
	./Build/$(Bin)
	clear
ray-init:
### Lembrar de ter o proprio make antes e o git
	sudo apt install cmake make git libasound2-dev mesa-common-dev libx11-dev libxrandr-dev libxi-dev xorg-dev libgl1-mesa-dev libglu1-mesa-dev
	git clone https://github.com/raysan5/raylib
	cd raylib
	mkdir build && cd build
	cmake -DBUILD_SHARED_LIBS=ON ..
	make
	sudo make install
	sudo cp /usr/local/lib/libraylib.so.450 /usr/lib/ 
	../.. && rm -rf raylib;
	echo "Instalacao Concluida"
remove:
	rm -rf Build
	clear
Executar:
	./Build/$(Bin)
	clear