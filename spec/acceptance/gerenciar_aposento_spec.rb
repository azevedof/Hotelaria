# coding: utf-8
require 'spec_helper'

feature 'gerenciar aposento' do

  scenario 'incluir aposento' do #, :javascript => true  do

    hotel  = FactoryGirl.create(:hotel, :nome => "YYY") 
   

    visit new_aposento_path

    preencher_e_verificar_aposento
   

  end

  scenario 'alterar aposento' do #, :javascript => true  do

    hotel  = FactoryGirl.create(:hotel, :nome => "YYY") 
    
    aposento = FactoryGirl.create(:aposento,:hotel => hotel)

    visit edit_aposento_path(aposento)

    preencher_e_verificar_aposento


  end

  scenario 'excluir aposento' do #, :javascript => true  do

    hotel = FactoryGirl.create(:hotel, :nome => "YYY") 
    

    aposento = FactoryGirl.create(:aposento,:hotel => hotel)

    visit aposentos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_aposento

    select 'YYY', :from => 'hotel'
    

    fill_in 'valor', :with => '20'
    fill_in 'descricao', :with => 'Dois quartos'
    fill_in 'numero', :with => '234'

    click_button 'Salvar'
    
    page.should have_content 'hotel: YYY'
   
    page.should have_content 'valor: 20'
    page.should have_content 'descricao: Dois quartos'
    page.should have_content 'numero: 234'    

  end

end
