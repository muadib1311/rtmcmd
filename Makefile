CC = gcc
CFLAGS = -Wall -lcurl

OBJ = main.o toodlcmd.o

toodl: $(OBJ)
	$(CC) $(CFLAGS) -o toodl $(OBJ)

%.o: %c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -rf toodl $(OBJ)

install: toodl
	cp toodl /usr/bin
