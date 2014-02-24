# coding: utf-8

require 'spec_helper'

feature 'gerenciar hospede' do

  scenario 'incluir hospede', :javascript => true do
    visit new_hospede_path
    preencher_e_verificar_hospede
 
  end

  scenario 'alterar hospede' do #, :js => true  do
    hospede = FactoryGirl.create(:hospede)
    visit edit_hospede_path(hospede)
    preencher_e_verificar_hospede

  end

   scenario 'excluir hospede' do #, :javascript => true do
       hospede = FactoryGirl.create(:hospede)
        visit hospedes_path
        click_link 'Excluir'

  end

   def preencher_e_verificar_hospede

      fill_in 'nome', :with => "Maria"
      fill_in 'cpf', :with => "12345678"
      fill_in 'rg', :with => "23456778"
      fill_in 'telefone', :with => "02238224323"
 
      click_button 'Salvar'

      page.should have_content 'nome: Maria'
      page.should have_content 'cpf: 12345678'
      page.should have_content 'rg: 23456778'
      page.should have_content 'telefone: 02238224323'
   
   end
end
