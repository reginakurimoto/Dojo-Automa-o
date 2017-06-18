#language: pt
#utf-8

Funcionalidade: Efetuar edição de novas tarefas
	Eu como usuario
	Quero acessar o site SuiteCRM
	Para cadastrar novas tarefas

@editar

Cenário: Efetuar a edicao de tarefas 
	Dado que estou no site SuiteCRM
 	Quando encontrar o nome pesquisado no site SuiteCRM  
 	E efetuar a edicao de status prioridade descricao e salvar
	Entao a edicao da tarefa sera efetuda 
