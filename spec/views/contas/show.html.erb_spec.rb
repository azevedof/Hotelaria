require 'spec_helper'

describe "contas/show" do
  before(:each) do
    @conta = assign(:conta, stub_model(Conta,
      :valorTotal => "Valortotal",
      :pago => "Pago",
      :consumo => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Valortotal/)
    rendered.should match(/Pago/)
    rendered.should match(//)
  end
end
