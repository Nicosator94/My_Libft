CC = gcc
CFLAGS = -Wall -Wextra -Werror
NAME = libft.a

SRC_CHARA = ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_toupper.c \
			ft_tolower.c

SRC_STRING = ft_atoi.c \
			ft_strlen.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_striteri.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \

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

SRC_PRINTF = ft_printf.c \
			ft_conv_hexa.c \
			ft_hexa_address.c \
			ft_unsigned_itoa.c

ALL_OBJ = $(SRC_CHARA:.c=.o) \
			$(SRC_STRING:.c=.o) \
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
