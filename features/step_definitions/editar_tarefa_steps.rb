
Quando(/^encontrar o nome pesquisado no site SuiteCRM$/) do
    @login.username.set('will')
    @login.password.set('will')
    @login.loginbutton.click

    @pesquisar = Pesquisar.new
    @pesquisar.menu_create.click
    @pesquisar.create_task.click
    @pesquisar.view_tasks.click
    @pesquisar.filter_subject.click
    @pesquisar.find_subject.set('TESTE REGINA 2')
    @pesquisar.search_button.click
end

Quando(/^efetuar a edicao de status prioridade descricao e salvar$/) do
    @editar = Editar.new    
    @editar.selecao_edi.click
	@editar.status.select('Completed') 
    @editar.priority.select('High')
    @editar.description.set('Concluido')
    @editar.save_button.click
end

Entao(/^a edicao da tarefa sera efetuda$/) do
    @editar.validar_edicao 
end
