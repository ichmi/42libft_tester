# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: frosa-ma <frosa-ma@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/16 14:54:45 by frosa-ma          #+#    #+#              #
#    Updated: 2022/04/16 14:59:50 by frosa-ma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: bin

bin: cwd
	gcc -Wall -Wextra -Werror main.c -L../../ -lft
	./a.out
	../../make fclean

cwd: libft.a
	cd ../../
	make
