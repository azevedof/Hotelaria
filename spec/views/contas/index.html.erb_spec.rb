require 'spec_helper'

describe "contas/index" do
  before(:each) do
    assign(:contas, [
      stub_model(Conta,
        :valorTotal => "Valortotal",
        :pago => "Pago",
        :consumo => nil
      ),
      stub_model(Conta,
        :valorTotal => "Valortotal",
        :pago => "Pago",
        :consumo => nil
      )
    ])
  end

  it "renders a list of contas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Valortotal".to_s, :count => 2
    assert_select "tr>td", :text => "Pago".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
