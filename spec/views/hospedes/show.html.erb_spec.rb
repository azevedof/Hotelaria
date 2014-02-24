require 'spec_helper'

describe "hospedes/show" do
  before(:each) do
    @hospede = assign(:hospede, stub_model(Hospede,
      :nome => "Nome",
      :cpf => "Cpf",
      :rg => "Rg",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Rg/)
    rendered.should match(/Telefone/)
  end
end
