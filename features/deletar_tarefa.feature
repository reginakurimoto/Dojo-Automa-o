#language: pt
#utf-8

Funcionalidade: Deletar tarefa
	Eu como usuario
	Quero acessar o site SuiteCRM
	Para deletar tarefas

@deletar

Esquema do Cenário: Efetuar a delecao de tarefas 
	Dado que estou no site SuiteCRM
 	Quando encontrar o "<nome>" pesquisado 
 	E efetuar a delecao e clicar em salvar
	Entao a delecao da tarefa sera efetuda

Exemplos:
         | nome 	      | 
         | TESTE REGINA 3 | 
