require 'spec_helper'

describe "avaliacaos/show" do
  before(:each) do
    @avaliacao = assign(:avaliacao, stub_model(Avaliacao,
      :queixa_principal => "MyText",
      :anamnese => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
