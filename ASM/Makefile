# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pnardozi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/03 13:05:37 by pnardozi          #+#    #+#              #
#    Updated: 2019/09/03 15:45:51 by pnardozi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NC = nasm
NASMFLAGS = -f macho64

COLLEEN= Colleen
COLLEEN_SRCS = Colleen.s
COLLEEN_OBJ = $(COLLEEN_SRCS:.s=.o)

GRACE= Grace
GRACE_SRCS = Grace.s
GRACE_OBJ = $(GRACE_SRCS:.s=.o)

SULLY= Sully
SULLY_SRCS = Sully.s
SULLY_OBJ = $(SULLY_SRCS:.s=.o)

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	$(NC) $(NASMFLAGS) -o $(COLLEEN_OBJ) $(COLLEEN_SRCS)
	$(NC) $(NASMFLAGS) -o $(COLLEEN) $(COLLEEN_OBJ)

$(GRACE):
	$(NC) $(NASMFLAGS) -o $(GRACE_OBJ) $(GRACE_SRCS)
	$(NC) $(NASMFLAGS) -o $(GRACE) $(GRACE_OBJ)

$(SULLY):
	$(NC) $(NASMFLAGS) -o $(SULLY_OBJ) $(SULLY_SRCS)
	$(NC) $(NASMFLAGS) -o $(SULLY) $(SULLY_OBJ)

clean:
	rm -f $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ)

fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re
