require 'spec_helper'

describe "hospedes/index" do
  before(:each) do
    assign(:hospedes, [
      stub_model(Hospede,
        :nome => "Nome",
        :cpf => "Cpf",
        :rg => "Rg",
        :telefone => "Telefone"
      ),
      stub_model(Hospede,
        :nome => "Nome",
        :cpf => "Cpf",
        :rg => "Rg",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of hospedes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
