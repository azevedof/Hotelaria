require 'spec_helper'

describe "consumos/show" do
  before(:each) do
    @consumo = assign(:consumo, stub_model(Consumo,
      :descricao => "Descricao",
      :quantidade => "Quantidade",
      :valorUnitario => "Valorunitario"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    rendered.should match(/Quantidade/)
    rendered.should match(/Valorunitario/)
  end
end
