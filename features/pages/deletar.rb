class Deletar < SitePrism::Page

   element :selecao_del, :xpath,"//*[@id='MassUpdate']/div[3]/table/tbody/tr/td[4]/b/a"
   element :action_link, :xpath,"//*[@id='tab-actions']/a"
   element :delete_task, :xpath,"//*[@id='delete_button']"
      
    def validar_delecao
  		page.driver.browser.switch_to.alert.accept
   end
end