class Editar < SitePrism::Page
          
    element :selecao_edi, '#edit-cdd5472f-0334-e92f-e2ae-5946ce259f89'
    element :status, '#status'
    element :priority, '#priority'
    element :description, '#description'
    element :save_button, :css, "#EditView > div.buttons > #SAVE"  

    def validar_edicao
        page.has_xpath?("//*[@id='content']/div[1]/h2")  
   end
end