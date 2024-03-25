##
## EPITECH PROJECT, 2023
## makefile.c
## File description:
## a makefile who that compile my_ftp
##

SRC_CLIENT =	src/server/main.c \

SRC_SERVER =	src/client/main.c \

OBJ_CLIENT = $(SRC_CLIENT:.c=.o)
OBJ_SERVER = $(SRC_SERVER:.c=.o)

NAME_CLIENT = myteams_cli
NAME_SERVER = myteams_server

CFLAGS = -g -Wall -Werror -Wextra -Wshadow -W

all : compile

compile :   $(OBJ_CLIENT) $(OBJ_SERVER)
	gcc -o $(NAME_CLIENT) $(OBJ_CLIENT)
	gcc -o $(NAME_SERVER) $(OBJ_SERVER)

clean :
	rm -f $(OBJ_CLIENT)
	rm -f $(OBJ_SERVER)

fclean : clean
	rm -f $(NAME_CLIENT)
	rm -f $(NAME_SERVER)

re : fclean all

tests_run : re
