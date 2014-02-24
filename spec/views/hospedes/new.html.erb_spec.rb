require 'spec_helper'

describe "hospedes/new" do
  before(:each) do
    assign(:hospede, stub_model(Hospede,
      :nome => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :telefone => "MyString"
    ).as_new_record)
  end

  it "renders new hospede form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hospedes_path, "post" do
      assert_select "input#hospede_nome[name=?]", "hospede[nome]"
      assert_select "input#hospede_cpf[name=?]", "hospede[cpf]"
      assert_select "input#hospede_rg[name=?]", "hospede[rg]"
      assert_select "input#hospede_telefone[name=?]", "hospede[telefone]"
    end
  end
end
