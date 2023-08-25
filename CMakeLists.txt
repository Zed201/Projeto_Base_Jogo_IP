### Futura alternativa ao make
cmake_minimum_required(VERSION 3.1)
project(Testando_Raylib "C")
message(STATUS "Iniciando o build do ${PROJECT_NAME}")
include_directories("usr/lib")
link_directories("usr/lib")
Set(SOURCES usr/lib)

add_executable(${PROJECT_NAME} index.c -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o index)
##add_executable(${PROJECT_NAME} teste.c)
message(STATUS "Build Finalizado")