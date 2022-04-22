# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frosa-ma <frosa-ma@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/16 14:54:45 by frosa-ma          #+#    #+#              #
#    Updated: 2022/04/22 13:34:03 by frosa-ma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY = clean all

CC = gcc
NAME = test_exe
CFLAGS := -Wall -Wextra -Werror 
MAKE := make
MFSUB = -C ..

COMP := ${CC} ${CFLAGS}
LIB := -L.. -lft

all: ${NAME} clean

# Bonus inc
${NAME}:
	@${MAKE} -s ${MFSUB} && ${MAKE} bonus -s ${MFSUB} && ${COMP} test_bonus.c ${LIB} -o $@
	@./$@
	@${MAKE} -s fclean ${MFSUB}

# Mandatory only
# ${NAME}:
# 	@${MAKE} -s ${MFSUB} && ${COMP} test_mand.c ${LIB} -o $@
# 	@./$@
# 	@${MAKE} -s fclean ${MFSUB}

clean:
	@rm test_exe
