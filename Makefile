# Se for trocar o nome do arquivo princial so troca o nome dele aqui, no caso troca index por main...
Bin=index

# Make apenas para facilitar o build dos .c com raylib, so digitar make para dar build, pasta com nome build, e executar
# make rm, vai remover a pasta e o arquivo excutavel
# make ex vai apenas executar o arquivo
# Ele apenas vai executar se tiver o .c
all: $(Bin).c
	@echo "Executando Build"
	mkdir -p Build
	gcc $(Bin).c -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o ./Build/$(Bin).o
	./Build/$(Bin).o
	clear
# Se nao tiver o executavel ele nao chama a funcao
rm: ./Build/$(Bin).o
	rm -rf Build
	@echo "Pastas de Build removidas"
# Se nao tiver o executavel ele nao chama a funcao
ex: ./Build/$(Bin).o
	@echo "Executando arquivo"
	./Build/$(Bin).o
	clear