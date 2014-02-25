require 'spec_helper'

describe "hospedagens/new" do
  before(:each) do
    assign(:hospedagem, stub_model(Hospedagem,
      :dataEntrada => "MyString",
      :dataSaida => "MyString",
      :conta => nil,
      :hospede => nil,
      :aposento => nil
    ).as_new_record)
  end

  it "renders new hospedagem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hospedagens_path, "post" do
      assert_select "input#hospedagem_dataEntrada[name=?]", "hospedagem[dataEntrada]"
      assert_select "input#hospedagem_dataSaida[name=?]", "hospedagem[dataSaida]"
      assert_select "input#hospedagem_conta[name=?]", "hospedagem[conta]"
      assert_select "input#hospedagem_hospede[name=?]", "hospedagem[hospede]"
      assert_select "input#hospedagem_aposento[name=?]", "hospedagem[aposento]"
    end
  end
end
