class Cadastro < SitePrism::Page
        	
 		element :menu_create, :xpath, "//*[@id='quickcreatetop']/a"
        element :create_task, :xpath, "//*[@id='quickcreatetop']/ul/li[7]/a"

        element :subject, '#name'
        element :status, '#status'
        element :priority, '#priority'
        element :description, '#description'
        element :save_button, :css, "#EditView > div.buttons > #SAVE"    

    def validar_cadastro
        page.has_xpath?("//*[@id='content']/div[1]/h2")  
    end 
end
