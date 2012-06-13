CC=gcc
CFLAGS=-O3 -Wall `sdl-config --cflags`
LIBS=`sdl-config --libs` -lm -lSDL_ttf -lSDL_image

all: mario

mario: main.c jeu.o fichiers.o editeur.o
	$(CC) $(CFLAGS) main.c jeu.o fichiers.o editeur.o -o mario $(LIBS)

jeu.o: jeu.c jeu.h
	$(CC) $(CFLAGS) -c jeu.c

fichiers.o: fichiers.c fichiers.h
	$(CC) $(CFLAGS) -c fichiers.c

editeur.o: editeur.c editeur.h
	$(CC) $(CFLAGS) -c editeur.c

clean:
	rm -f *core *.o mario
