require 'spec_helper'

describe "aposentos/edit" do
  before(:each) do
    @aposento = assign(:aposento, stub_model(Aposento,
      :valor => "MyString",
      :descricao => "MyString",
      :numero => "MyString",
      :hotel => nil
    ))
  end

  it "renders the edit aposento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aposento_path(@aposento), "post" do
      assert_select "input#aposento_valor[name=?]", "aposento[valor]"
      assert_select "input#aposento_descricao[name=?]", "aposento[descricao]"
      assert_select "input#aposento_numero[name=?]", "aposento[numero]"
      assert_select "input#aposento_hotel[name=?]", "aposento[hotel]"
    end
  end
end
