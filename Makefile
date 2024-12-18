CC=cc
CFLAGS=-Wall -Wextra -Werror -c
SOURCEFILES=libft/ft_isalpha.c libft/ft_isdigit.c libft/ft_isalnum.c \
	    libft/ft_isascii.c libft/ft_isprint.c libft/ft_strlen.c \
	    libft/ft_memset.c libft/ft_bzero.c libft/ft_memcpy.c \
	    libft/ft_memmove.c libft/ft_strlcpy.c libft/ft_strlcat.c \
	    libft/ft_toupper.c libft/ft_tolower.c libft/ft_strchr.c \
	    libft/ft_strrchr.c libft/ft_strncmp.c libft/ft_memchr.c \
	    libft/ft_memcmp libft/ft_strnstr.c libft/ft_atoi.c \
	    libft/ft_calloc.c libft/ft_strdup.c libft/ft_substr.c \
	    libft/ft_strjoin.c libft/ft_strtrim.c libft/ft_split.c \
	    libft/ft_itoa.c libft/ft_strmapi.c libft/ft_striteri.c \
	    libft/ft_putchar_fd.c libft/ft_putstr_fd.c libft/ft_putnbr_fd.c \
	    libft/ft_putendl_fd.c src/printhex.c src/printnumbers.c \
	    src/ft_printf.c  src/printptr.c
OBJECTS=objects/ft_isalpha.o objects/ft_isdigit.o objects/ft_isalnum.o \
	objects/ft_isascii.o objects/ft_isprint.o objects/ft_strlen.o \
       	objects/ft_memset.o objects/ft_bzero.o objects/ft_memcpy.o \
	objects/ft_memmove.o objects/ft_strlcpy.o objects/ft_strlcat.o \
	objects/ft_toupper.o objects/ft_tolower.o objects/ft_strchr.o \
	objects/ft_strrchr.o objects/ft_strncmp.o objects/ft_memchr.o \
	objects/ft_memcmp.o objects/ft_strnstr.o objects/ft_atoi.o \
       	objects/ft_calloc.o objects/ft_strdup.o objects/ft_substr.o \
       	objects/ft_strjoin.o objects/ft_strtrim.o objects/ft_split.o \
	objects/ft_itoa.o objects/ft_strmapi.o objects/ft_striteri.o \
	objects/ft_putchar_fd.o objects/ft_putstr_fd.o objects/ft_putnbr_fd.o \
	objects/ft_putendl_fd.o objects/printhex.o objects/printnumbers.o \
	objects/ft_printf.o objects/printptr.o
NAME=libftprintf.a
OBJDIR=objects

all: $(OBJDIR) $(OBJECTS) $(NAME)

$(NAME): $(OBJDIR) $(OBJECTS)
	ar rcs libftprintf.a $(OBJECTS)

$(OBJDIR):
	mkdir -p objects

$(OBJDIR)/%.o: src/%.c
	$(CC) $(CFLAGS) $< -o $@

$(OBJDIR)/%.o: libft/%.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re 
