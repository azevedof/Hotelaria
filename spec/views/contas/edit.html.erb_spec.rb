require 'spec_helper'

describe "contas/edit" do
  before(:each) do
    @conta = assign(:conta, stub_model(Conta,
      :valorTotal => "MyString",
      :pago => "MyString",
      :consumo => nil
    ))
  end

  it "renders the edit conta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conta_path(@conta), "post" do
      assert_select "input#conta_valorTotal[name=?]", "conta[valorTotal]"
      assert_select "input#conta_pago[name=?]", "conta[pago]"
      assert_select "input#conta_consumo[name=?]", "conta[consumo]"
    end
  end
end
