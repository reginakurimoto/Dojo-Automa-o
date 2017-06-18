#language: pt
#utf-8

Funcionalidade: Efetuar cadastro de novas tarefas
	Eu como usuario
	Quero acessar o site SuiteCRM
	Para cadastrar novas tarefas

@cadastrar

Esquema do Cenário: Efetuar cadastro de novas tarefas
	Dado que estou no site SuiteCRM
	Quando me logar no site
	E preencher as informacoes do "<nome>" "<status>" "<prioridade>" "<descricao>"
	Entao cadastro das tarefas sera efetuado
	      
	Exemplos:
         | nome 	      | status        | prioridade | descricao      |
         | TESTE REGINA 1 | In Progress   | Medium     | TESTE REGINA 1 |
         | TESTE REGINA 2 | Pending Input | Low        | TESTE REGINA 2 |
         | TESTE REGINA 3 | Completed     | High       | TESTE REGINA 3 |