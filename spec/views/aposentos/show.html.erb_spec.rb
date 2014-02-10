require 'spec_helper'

describe "aposentos/show" do
  before(:each) do
    @aposento = assign(:aposento, stub_model(Aposento,
      :pkidaposento => "",
      :descricao => "Descricao",
      :numero => "",
      :valor => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Descricao/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
