NAME	=	libasm.so

SRC	=	memcpy.S \
		rindex.S \
		strlen.S \
		strcspn.S \
		strpbrk.S \
		memset.S \
		strchr.S \
		strcmp.S \
		strcasecmp.S \
		strncmp.S \
		strstr.S \

OBJ	=	$(SRC:.S=.o)

CC	=	gcc -shared

NASM	=	nasm -f elf64

all	:	$(NAME)

$(NAME)	:	$(OBJ)
		$(CC) $(OBJ) -o $(NAME)

.S.o	:
		$(NASM) $<

clean	:
		rm -f $(OBJ)

fclean	:	clean
		rm -f $(NAME)

re	:	fclean all

.PHONY	:	all clean fclean re
