require 'spec_helper'

describe "aposentos/new" do
  before(:each) do
    assign(:aposento, stub_model(Aposento,
      :pkidaposento => "",
      :descricao => "MyString",
      :numero => "",
      :valor => ""
    ).as_new_record)
  end

  it "renders new aposento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aposentos_path, "post" do
      assert_select "input#aposento_pkidaposento[name=?]", "aposento[pkidaposento]"
      assert_select "input#aposento_descricao[name=?]", "aposento[descricao]"
      assert_select "input#aposento_numero[name=?]", "aposento[numero]"
      assert_select "input#aposento_valor[name=?]", "aposento[valor]"
    end
  end
end
