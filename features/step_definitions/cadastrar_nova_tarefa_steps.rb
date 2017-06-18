Dado(/^que estou no site SuiteCRM$/) do
 	@login = Login.new
 	@login.load
end

Quando(/^me logar no site$/) do
  	@login.username.set('will')
  	@login.password.set('will')
  	@login.loginbutton.click
end

Quando(/^preencher as informacoes do "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |nome, status, prioridade, descricao| 
    @cadastro = Cadastro.new

    @cadastro.menu_create.click
    @cadastro.create_task.click

    @cadastro.subject.set(nome)
    @cadastro.status.select(status) 
    @cadastro.priority.select(prioridade)
    @cadastro.description.set(descricao)
 
    @cadastro.save_button.click
end

Entao(/^cadastro das tarefas sera efetuado$/) do
    @cadastro.validar_cadastro 
end