# coding: utf-8

require 'spec_helper'

feature 'gerenciar consumo' do

  scenario 'incluir consumo', :javascript => true do
    visit new_consumo_path
    preencher_e_verificar_consumo
 
  end

  scenario 'alterar consumo' do #, :js => true  do
    consumo = FactoryGirl.create(:consumo)
    visit edit_consumo_path(consumo)
    preencher_e_verificar_consumo

  end

   scenario 'excluir consumo' do #, :javascript => true do
       consumo = FactoryGirl.create(:consumo)
        visit consumos_path
        click_link 'Excluir'

  end

   def preencher_e_verificar_consumo

      fill_in 'descricao', :with => "Cerveja"
      fill_in 'quantidade', :with => "2"
      fill_in 'valorUnitario', :with => "2.40"
      
      click_button 'Salvar'

      page.should have_content 'descricao: Cerveja'
      page.should have_content 'quantidade: 2'
      page.should have_content 'valorUnitario: 2.40'
         
   end
end
