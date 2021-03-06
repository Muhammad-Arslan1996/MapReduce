# final executable to build:
TARGET= FirstCount
# .o files to link in (for all .c files)
OBJS = FirstCount.o map.o

# Add support for pthread and real-time clock here:
CFLAGS = -Wall -g -lrt -pthread -std=c99 -Werror -D_POSIX_C_SOURCE=199309L


# You should not need to change any of this:
CC_C = gcc

all: clean $(TARGET)

%.o : %.c
	$(CC) -c $(CFLAGS) $<

$(TARGET): $(OBJS)
	$(CC_C) $(CFLAGS) $(OBJS) -o $@

clean:
	rm -f $(TARGET)
	rm -f $(OBJS)
