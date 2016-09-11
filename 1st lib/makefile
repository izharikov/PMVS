CC = gcc # C compiler
CFLAGS = -c -Wall -Werror -fpic # C flags
LDFLAGS = -shared -o # linking flags
RM = rm -f  # rm command
SRC1 = first_lib.c
SRC2 = second_lib.c
OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)
TARGET_LIB1 = target1 # target lib
TARGET_LIB2 = target2 # target lib

MAIN_FILE = main.c
MAIN_OUT = out
MAIN_FLAGS = -o $(MAIN_OUT) $(MAIN_FILE:.c=.o) -L. -Wl,-rpath=. -l$(TARGET_LIB1) -l$(TARGET_LIB2)

LIB1=$(addsuffix .so, lib$(TARGET_LIB1))
LIB2=$(addsuffix .so, lib$(TARGET_LIB2))

# -L. -Wall -o -ltarget1
all: first second target1 target2 main make_main
first:
	$(CC) ${CFLAGS} ${SRC1}
second:
	$(CC) ${CFLAGS} ${SRC2}
target1:
	$(CC) $(LDFLAGS) $(LIB1) $(OBJ1)
target2:
	$(CC) $(LDFLAGS) $(LIB2) $(OBJ2)
make_main:
	$(CC) $(MAIN_FLAGS)
main:
	$(CC) -c $(MAIN_FILE)
clean:
	$(RM) $(OBJ1) $(OBJ2) $(LIB1) $(LIB2) $(MAIN_OUT) $(MAIN_FILE:.c=.o)

