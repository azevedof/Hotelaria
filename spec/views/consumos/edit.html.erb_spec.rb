require 'spec_helper'

describe "consumos/edit" do
  before(:each) do
    @consumo = assign(:consumo, stub_model(Consumo,
      :descricao => "MyString",
      :quantidade => "MyString",
      :valorUnitario => "MyString"
    ))
  end

  it "renders the edit consumo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumo_path(@consumo), "post" do
      assert_select "input#consumo_descricao[name=?]", "consumo[descricao]"
      assert_select "input#consumo_quantidade[name=?]", "consumo[quantidade]"
      assert_select "input#consumo_valorUnitario[name=?]", "consumo[valorUnitario]"
    end
  end
end
