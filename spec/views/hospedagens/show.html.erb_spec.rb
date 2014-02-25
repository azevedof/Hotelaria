require 'spec_helper'

describe "hospedagens/show" do
  before(:each) do
    @hospedagem = assign(:hospedagem, stub_model(Hospedagem,
      :dataEntrada => "Dataentrada",
      :dataSaida => "Datasaida",
      :conta => nil,
      :hospede => nil,
      :aposento => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dataentrada/)
    rendered.should match(/Datasaida/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
