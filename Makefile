CC = gcc
CFLAGS = -Wall -lcurl -I../jsmn

OBJ = main.o toodlcmd.o libjsmn.a
OBJ_WITHOUT_LIB = main.o toodlcmd.o

toodl: $(OBJ)
	$(CC) $(CFLAGS) -o toodl $(OBJ)

%.o: %c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -rf toodl $(OBJ_WITHOUT_LIB)

install: toodl
	cp toodl /usr/bin
