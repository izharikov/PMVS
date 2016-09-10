CC = gcc # C compiler
CFLAGS = -c -Wall -Werror -fpic # C flags
LDFLAGS = -shared -o # linking flags
RM = rm -f  # rm command
SRC1 = first_lib.c
SRC2 = second_lib.c
OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)
TARGET_LIB1 = libtarget1.so # target lib
TARGET_LIB2 = libtarget2.so # target lib

MAIN_FILE = main.c
MAIN_OUT = out
MAIN_FLAGS = -L"${CURDIR}" -Wall -o

all: first second target1 target2 make_main
first:
	$(CC) ${CFLAGS} ${SRC1}
second:
	$(CC) ${CFLAGS} ${SRC2}
target1:
	$(CC) $(LDFLAGS) $(TARGET_LIB1) $(OBJ1)
target2:
	$(CC) $(LDFLAGS) $(TARGET_LIB2) $(OBJ2)
make_main:
	$(CC) $(MAIN_FLAGS) $(MAIN_OUT) $(MAIN_FILE)
clean:
	$(RM) $(OBJ1) $(OBJ2) $(TARGET_LIB1) $(TARGET_LIB2) $(MAIN_OUT)
