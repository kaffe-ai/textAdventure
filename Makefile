
CC = gcc
CFLAGS = -Wall
OBJ = output

$(OBJ): main.o parsexec.o
	$(CC) $(CFLAGS) main.o parsexec.o -o $(OBJ)

main.o: main.c
	$(CC) -c main.c

parsexec.o: parsexec.c parsexec.h
	$(CC) -c parsexec.c

clean:
	rm *.o *.exe