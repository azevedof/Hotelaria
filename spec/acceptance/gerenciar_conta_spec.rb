# coding: utf-8
require 'spec_helper'

feature 'gerenciar conta' do

  scenario 'incluir conta' do #, :javascript => true  do

    consumo  = FactoryGirl.create(:consumo, :descricao => "XXX") 
       

    visit new_conta_path

    preencher_e_verificar_conta
   

  end

  scenario 'alterar conta' do #, :javascript => true  do

    consumo  = FactoryGirl.create(:consumo, :descricao => "XXX")  
    
    conta = FactoryGirl.create(:conta,:consumo => consumo)

    visit edit_conta_path(conta)

    preencher_e_verificar_conta


  end

  scenario 'excluir conta' do #, :javascript => true  do

    consumo  = FactoryGirl.create(:consumo, :descricao => "XXX")  
    

    conta = FactoryGirl.create(:conta,:consumo => consumo)

    visit contas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_conta

    select 'XXX', :from => 'consumo'
    

    fill_in 'valorTotal', :with => '200'
    fill_in 'pago', :with => 'ok'
    

    click_button 'Salvar'
    
    page.should have_content 'consumo: XXX'
   
    page.should have_content 'valorTotal: 20'
    page.should have_content 'pago: ok'
        

  end

end
