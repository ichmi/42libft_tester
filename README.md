# Testes para o projeto _libft_

A fim de testar o negocio, clone o repo dentro do seu projeto _libft_:
```sh
git clone https://github.com/ichmi/42libft_tester.git
```
Feito isso, va ate a repo e execute **`make`**, ele ira se encarregar de compilar o seu projeto com os testes e linka-los:
```sh
cd 42libft_tester
make
```
O proprio comando ira encarregar-se de executar o binario _`test_exe`_, que possue os testes para suas funcoes **`ft_`** s.

PS: O teste depende do seu **_Makefile_** para montar a _libft_, portanto certifique-se de que ele esteja funcionando de forma adequada, pois o _Makefile_ do teste depende do _Makefile_ do seu projeto. Also, o teste nao monitora alteracoes no seu projeto, nesse caso, vc precisara excluir o binario _`test_exe`_ via _`rm`_ ou _`make clean`_. Uma vez que vc se desfaca do binario, eh possivel compilar e linkar tudo novamente atraves do comando **`make`**. O novo executavel ira conter as novas alteracoes feitas.

Feel free em adicionar novos testes ou reportar bugs, e tambem em enviar-me msg.

Perfil intra/disc: **`frosa-ma`**
