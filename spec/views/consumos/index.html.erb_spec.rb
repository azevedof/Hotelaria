require 'spec_helper'

describe "consumos/index" do
  before(:each) do
    assign(:consumos, [
      stub_model(Consumo,
        :descricao => "Descricao",
        :quantidade => "Quantidade",
        :valorUnitario => "Valorunitario"
      ),
      stub_model(Consumo,
        :descricao => "Descricao",
        :quantidade => "Quantidade",
        :valorUnitario => "Valorunitario"
      )
    ])
  end

  it "renders a list of consumos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Quantidade".to_s, :count => 2
    assert_select "tr>td", :text => "Valorunitario".to_s, :count => 2
  end
end
