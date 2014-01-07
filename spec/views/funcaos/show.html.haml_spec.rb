require 'spec_helper'

describe "funcaos/show" do
  before(:each) do
    @funcao = assign(:funcao, stub_model(Funcao,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
