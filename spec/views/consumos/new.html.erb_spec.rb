require 'spec_helper'

describe "consumos/new" do
  before(:each) do
    assign(:consumo, stub_model(Consumo,
      :descricao => "MyString",
      :quantidade => "MyString",
      :valorUnitario => "MyString"
    ).as_new_record)
  end

  it "renders new consumo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumos_path, "post" do
      assert_select "input#consumo_descricao[name=?]", "consumo[descricao]"
      assert_select "input#consumo_quantidade[name=?]", "consumo[quantidade]"
      assert_select "input#consumo_valorUnitario[name=?]", "consumo[valorUnitario]"
    end
  end
end
