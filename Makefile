# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frosa-ma <frosa-ma@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/16 14:54:45 by frosa-ma          #+#    #+#              #
#    Updated: 2022/04/19 00:16:56 by frosa-ma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY = clean all

CC = gcc
NAME = test_exe
CFLAGS := -Wall -Wextra -Werror 
MAKE := make
MFSUB = -C ..

COMP := ${CC} ${CFLAGS} main.c -L.. -lft

all: ${NAME} clean

${NAME}:
	@${MAKE} -s ${MFSUB} && ${COMP} -o ${NAME}
	@./${NAME}
	@${MAKE} -s fclean ${MFSUB}

clean:
	@rm ${NAME}
