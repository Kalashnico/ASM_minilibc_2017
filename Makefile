##
## EPITECH PROJECT, 2017
## ASM
## File description:
## Makeile for ASM
##

ASM     = nasm

CC      = gcc

RM      = rm -f

ASMFLAGS = -f elf64
CFLAGS = -fPIC
CFLAGS += -W -Wall -Wextra -Werror
LDFLAGS = -shared

SRCS    = strlen.s              \
	  strchr.s		\
          strcmp.s              \
          strncmp.s             \
	  memset.s		\
	  memcpy.s		\
	  memmove.s		\
	  strstr.s		\
	  strpbrk.s		\
	  rindex.s		\
	  strcspn.s		\

OBJS    = $(addprefix src/, $(SRCS:.s=.o))

NAME    = libasm.so

ifeq    ($(DEBUG),yes)
        CC += -g3
endif

$(NAME): $(OBJS)
	 @$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)
	 @printf "\n-------------------\n"
	 @printf "\n\033[32m[OK]\033[0m Binary : \033[36m$(NAME)\033[0m\n"
	 @printf "\n-------------------\n"

%.o :    %.s
	 @printf "\033[32m[OK]\033[0m $<\n";
	 @$(ASM) $(ASMFLAGS) -o $@ $<

all: $(NAME)

clean:
	 @$(RM) $(OBJS)

fclean: clean

re: fclean all

.PHONY: all tests_run clean  fclean re