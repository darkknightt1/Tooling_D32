FrontEnd: main.c
	gcc -E main.c -o main.i
MiddleEnd: main.c
	gcc -S main.c -o main.s
BackEnd: main.c
	gcc -c main.c -o main.o
Linker: main.c
	gcc -O main.c -o main.exe
Build: main.c
	make FrontEnd
	make MiddleEnd
	make BackEnd
	make Linker

Run :main.c
	.\main.exe 
Build_Run: main.c
	make Build
	make Run