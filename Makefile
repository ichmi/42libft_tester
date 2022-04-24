# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frosa-ma <frosa-ma@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/16 14:54:45 by frosa-ma          #+#    #+#              #
#    Updated: 2022/04/23 21:36:19 by frosa-ma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY = clean all m b __MAND

CC = gcc
NAME = test_exe
CFLAGS := -Wall -Wextra -Werror 
MAKE := make
MFSUB = -C ..

COMP := ${CC} ${CFLAGS}
LIB := -L.. -lft

all: ${NAME} clean

b: all

m: __MAND clean

# Bonus inc
${NAME}:
	@${MAKE} -s ${MFSUB} && ${MAKE} bonus -s ${MFSUB} && ${COMP} test_bonus.c ${LIB} -o $@
	@./$@
	@${MAKE} -s fclean ${MFSUB}

# Mandatory only
__MAND:
	@${MAKE} -s ${MFSUB} && ${COMP} test_mand.c ${LIB} -o test_exe
	@./test_exe
	@${MAKE} -s fclean ${MFSUB}

clean:
	@rm test_exe
