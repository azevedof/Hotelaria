require 'spec_helper'

describe "hospedes/edit" do
  before(:each) do
    @hospede = assign(:hospede, stub_model(Hospede,
      :nome => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit hospede form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hospede_path(@hospede), "post" do
      assert_select "input#hospede_nome[name=?]", "hospede[nome]"
      assert_select "input#hospede_cpf[name=?]", "hospede[cpf]"
      assert_select "input#hospede_rg[name=?]", "hospede[rg]"
      assert_select "input#hospede_telefone[name=?]", "hospede[telefone]"
    end
  end
end
