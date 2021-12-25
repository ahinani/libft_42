# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahinani <ahinani@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/21 12:52:24 by ahinani           #+#    #+#              #
#    Updated: 2021/12/09 17:46:27 by ahinani          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror
HEADER = ../include

SRC =   ft_isalnum.c	\
		ft_isascii.c	\
		ft_isprint.c	\
		ft_memset.c		\
		ft_strlen.c		\
		ft_tolower.c	\
		ft_bzero.c		\
		ft_isalpha.c	\
		ft_isdigit.c	\
		ft_memchr.c		\
		ft_memcpy.c		\
		ft_memmove.c	\
		ft_strchr.c		\
		ft_strlcpy.c	\
		ft_strncmp.c	\
		ft_strrchr.c	\
		ft_atoi.c		\
		ft_strnstr.c	\
		ft_toupper.c	\
		ft_strlcat.c	\
		ft_memcmp.c		\
		ft_calloc.c		\
		ft_strdup.c		\
		ft_putchar_fd.c	\
		ft_putstr_fd.c	\
		ft_putendl_fd.c	\
		ft_substr.c		\
		ft_strjoin.c	\
		ft_strtrim.c	\
		ft_putnbr_fd.c	\
		ft_split.c		\
		ft_itoa.c		\
		ft_strmapi.c	\
		ft_striteri.c

OBJECTS = $(SRC:.c=.o)

INCLUDES = libft.h

all: $(NAME)

$(NAME): $(OBJECTS) $(INCLUDES)
	ar rcs $(NAME) $(OBJECTS)

%.o : %.c
	$(CC) $(CFLAGS) -o -I $(HEADER) $@ -c $<

clean:
	rm -rf $(OBJECTS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
