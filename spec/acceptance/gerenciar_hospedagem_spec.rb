# coding: utf-8
require 'spec_helper'

feature 'gerenciar hospedagem' do

  scenario 'incluir hospedagem' do #, :javascript => true  do

    conta  = FactoryGirl.create(:conta, :pago => "XXX") 
    hospede  = FactoryGirl.create(:hospede, :nome => "YYY") 
    aposento  = FactoryGirl.create(:aposento, :descricao => "ZZZ")    

    visit new_hospedagem_path

    preencher_e_verificar_hospedagem
   

  end

  scenario 'alterar hospedagem' do #, :javascript => true  do

    conta  = FactoryGirl.create(:conta, :pago => "XXX") 
    hospede  = FactoryGirl.create(:hospede, :nome => "YYY") 
    aposento  = FactoryGirl.create(:aposento, :descricao => "ZZZ")      
    
    hospedagem = FactoryGirl.create(:hospedagem,:conta => conta, :hospede => hospede, :aposento => aposento)

    visit edit_hospedagem_path(hospedagem)

    preencher_e_verificar_hospedagem


  end

  scenario 'excluir hospedagem' do #, :javascript => true  do
    
    conta  = FactoryGirl.create(:conta, :pago => "XXX") 
    hospede  = FactoryGirl.create(:hospede, :nome => "YYY") 
    aposento  = FactoryGirl.create(:aposento, :descricao => "ZZZ")    
    

    hospedagem = FactoryGirl.create(:hospedagem,:conta => conta, :hospede => hospede, :aposento => aposento)

    visit hospedagens_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_hospedagem

    select 'XXX', :from => 'conta'
    select 'YYY', :from => 'hospede'
    select 'ZZZ', :from => 'aposento'

    fill_in 'dataEntrada', :with => '24/02/2014'
    fill_in 'dataSaida', :with => '26/02/2014'
    

    click_button 'Salvar'
    
    page.should have_content 'conta: XXX'
    page.should have_content 'hospede: YYY'
    page.should have_content 'aposento: ZZZ'

    page.should have_content 'dataEntrada: 24/02/2014'
    page.should have_content 'dataSaida: 26/02/2014'
        

  end

end
