# coding: utf-8

require 'spec_helper'

feature 'gerenciar hotel' do

  scenario 'incluir hotel', :javascript => true do
    visit new_hotel_path
    preencher_e_verificar_hotel
 
  end

  scenario 'alterar hotel' do #, :js => true  do
    hotel = FactoryGirl.create(:hotel)
    visit edit_hotel_path(hotel)
    preencher_e_verificar_hotel

  end

   scenario 'excluir hotel' do #, :javascript => true do
       hotel = FactoryGirl.create(:hotel)
        visit hotels_path
        click_link 'Excluir'

  end

   def preencher_e_verificar_hotel

      fill_in 'nome', :with => "João"
      fill_in 'endereco', :with => "Rua do Goyta"
      fill_in 'telefone', :with => "02238224323"
      fill_in 'cidade', :with => "Campos dos Goytacazes"
      fill_in 'estado', :with => "RJ"

      click_button 'Salvar'

      page.should have_content 'nome: João'
      page.should have_content 'endereco: Rua do Goyta'
      page.should have_content 'telefone: 02238224323'
      page.should have_content 'cidade: Campos dos Goytacazes'
      page.should have_content 'estado: RJ'
      
   
   end
end
