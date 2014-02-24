require 'spec_helper'

describe "hotels/show" do
  before(:each) do
    @hotel = assign(:hotel, stub_model(Hotel,
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :cidade => "Cidade",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
    rendered.should match(/Cidade/)
    rendered.should match(/Estado/)
  end
end
