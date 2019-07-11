del PlantBoy.gb
::rgbasm -i inc/ -o src/memory.o src/memory.asm
::rgbasm -i -o src/hello-world.o src/hello-world.asm
::rgblink -o hello-world.gb -n hello-world.sym src/memory.o src/hello-world.o
::rgbfix -v -p 0 hello-world.gb
rgbasm -o PlantBoy.o  .\bank0.asm
rgblink.exe -o PlantBoy.gb -n PlantBoy.sym .\PlantBoy.o
rgbfix -v -p 0 .\PlantBoy.gb
del Plantboy.o
bgb PlantBoy.gb
