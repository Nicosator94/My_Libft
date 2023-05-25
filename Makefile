CC = gcc
CFLAGS = -Wall -Wextra -Werror
NAME = libft.a

SRC_CHARA = chara/ft_isalpha.c \
			chara/ft_isdigit.c \
			chara/ft_isalnum.c \
			chara/ft_isascii.c \
			chara/ft_isprint.c \
			chara/ft_toupper.c \
			chara/ft_tolower.c

SRC_STRING = string/ft_atoi.c \
			string/ft_strlen.c \
			string/ft_strlcpy.c \
			string/ft_strlcat.c \
			string/ft_strchr.c \
			string/ft_strrchr.c \
			string/ft_strncmp.c \
			string/ft_strnstr.c \
			string/ft_striteri.c \
			string/ft_strdup.c \
			string/ft_substr.c \
			string/ft_strjoin.c \
			string/ft_strtrim.c \
			string/ft_split.c \
			string/ft_itoa.c \
			string/ft_strmapi.c

SRC_MEMORY = memory/ft_bzero.c \
			memory/ft_calloc.c \
			memory/ft_memchr.c \
			memory/ft_memcmp.c \
			memory/ft_memcpy.c \
			memory/ft_memmove.c \
			memory/ft_memset.c

SRC_WRITE = write/ft_putchar_fd.c \
			write/ft_putstr_fd.c \
			write/ft_putendl_fd.c \
			write/ft_putnbr_fd.c

SRC_LIST = list/ft_lstnew.c \
			list/ft_lstadd_front.c \
			list/ft_lstsize.c \
			list/ft_lstlast.c \
			list/ft_lstadd_back.c \
			list/ft_lstdelone.c \
			list/ft_lstclear.c \
			list/ft_lstiter.c \
			list/ft_lstmap.c

SRC_PRINTF = printf/ft_printf.c \
			printf/ft_conv_hexa.c \
			printf/ft_hexa_address.c \
			printf/ft_unsigned_itoa.c

ALL_OBJ = $(SRC_CHARA:.c=.o) \
			$(SRC_STRING:.c=.o) \
			$(SRC_MEMORY:.c=.o) \
			$(SRC_WRITE:.c=.o) \
			$(SRC_LIST:.c=.o) \
			$(SRC_PRINTF:.c=.o)

all : $(NAME)

$(NAME) : $(ALL_OBJ)
	ar rcs $(NAME) $(ALL_OBJ)

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean :
	rm -f $(ALL_OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : all bonus clean fclean re
