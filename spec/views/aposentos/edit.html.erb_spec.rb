require 'spec_helper'

describe "aposentos/edit" do
  before(:each) do
    @aposento = assign(:aposento, stub_model(Aposento,
      :pkidaposento => "",
      :descricao => "MyString",
      :numero => "",
      :valor => ""
    ))
  end

  it "renders the edit aposento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aposento_path(@aposento), "post" do
      assert_select "input#aposento_pkidaposento[name=?]", "aposento[pkidaposento]"
      assert_select "input#aposento_descricao[name=?]", "aposento[descricao]"
      assert_select "input#aposento_numero[name=?]", "aposento[numero]"
      assert_select "input#aposento_valor[name=?]", "aposento[valor]"
    end
  end
end
