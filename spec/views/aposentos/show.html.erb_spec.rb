require 'spec_helper'

describe "aposentos/show" do
  before(:each) do
    @aposento = assign(:aposento, stub_model(Aposento,
      :valor => "Valor",
      :descricao => "Descricao",
      :numero => "Numero",
      :hotel => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Valor/)
    rendered.should match(/Descricao/)
    rendered.should match(/Numero/)
    rendered.should match(//)
  end
end
