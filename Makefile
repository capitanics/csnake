CC = gcc
CFLAGS = -Wall -Wextra
LIBS = -lSDL2
SRCS = snake.c
OBJS = $(SRCS:.c=.o)
MAIN = snake

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LIBS)
.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) *.o *. $(MAIN)
