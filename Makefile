CC = gcc
CFLAGS = -Wall -lcurl -I../jsmn

OBJ = main.o rtmcmd.o libjsmn.a
OBJ_WITHOUT_LIB = main.o rtmcmd.o

toodl: $(OBJ)
	$(CC) $(CFLAGS) -o toodl $(OBJ)

%.o: %c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -rf toodl $(OBJ_WITHOUT_LIB)

install: toodl
	cp toodl /usr/bin
