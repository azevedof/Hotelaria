require 'spec_helper'

describe "aposentos/index" do
  before(:each) do
    assign(:aposentos, [
      stub_model(Aposento,
        :pkidaposento => "",
        :descricao => "Descricao",
        :numero => "",
        :valor => ""
      ),
      stub_model(Aposento,
        :pkidaposento => "",
        :descricao => "Descricao",
        :numero => "",
        :valor => ""
      )
    ])
  end

  it "renders a list of aposentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
