Quando(/^encontrar o "([^"]*)" pesquisado$/) do |nome|
    @login.username.set('will')
    @login.password.set('will')
    @login.loginbutton.click

    @pesquisar = Pesquisar.new
    @pesquisar.menu_create.click
    @pesquisar.create_task.click
    @pesquisar.view_tasks.click
    @pesquisar.filter_subject.click
    @pesquisar.find_subject.set(nome)
    @pesquisar.search_button.click
end

Quando(/^efetuar a delecao e clicar em salvar$/) do
   	@deletar = Deletar.new    
    @deletar.selecao_del.click
  	@deletar.action_link.click
  	@deletar.delete_task.click
end

Entao(/^a delecao da tarefa sera efetuda$/) do
    @deletar.validar_delecao
end