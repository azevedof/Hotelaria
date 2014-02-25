require 'spec_helper'

describe "hospedagens/index" do
  before(:each) do
    assign(:hospedagens, [
      stub_model(Hospedagem,
        :dataEntrada => "Dataentrada",
        :dataSaida => "Datasaida",
        :conta => nil,
        :hospede => nil,
        :aposento => nil
      ),
      stub_model(Hospedagem,
        :dataEntrada => "Dataentrada",
        :dataSaida => "Datasaida",
        :conta => nil,
        :hospede => nil,
        :aposento => nil
      )
    ])
  end

  it "renders a list of hospedagens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dataentrada".to_s, :count => 2
    assert_select "tr>td", :text => "Datasaida".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
