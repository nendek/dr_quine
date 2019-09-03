# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pnardozi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/03 13:05:37 by pnardozi          #+#    #+#              #
#    Updated: 2019/09/03 13:59:34 by pnardozi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

C = gcc
CFLAGS = -Wall -Wextra -Werror

COLLEEN= Colleen
COLLEEN_SRCS = Colleen.c
COLLEEN_OBJ = $(COLLEEN_SRCS:.c=.o)

GRACE= Grace
GRACE_SRCS = Grace.c
GRACE_OBJ = $(GRACE_SRCS:.c=.o)

SULLY= Sully
SULLY_SRCS = Sully.c
SULLY_OBJ = $(SULLY_SRCS:.c=.o)

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	$(CC) $(CFLAGS) -o $(COLLEEN_OBJ) -c $(COLLEEN_SRCS)
	$(CC) $(CFLAGS) -o $(COLLEEN) $(COLLEEN_OBJ)

$(GRACE):
	$(CC) $(CFLAGS) -o $(GRACE_OBJ) -c $(GRACE_SRCS)
	$(CC) $(CFLAGS) -o $(GRACE) $(GRACE_OBJ)

$(SULLY):
	$(CC) $(CFLAGS) -o $(SULLY_OBJ) -c $(SULLY_SRCS)
	$(CC) $(CFLAGS) -o $(SULLY) $(SULLY_OBJ)

clean:
	rm -f $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ)

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re
