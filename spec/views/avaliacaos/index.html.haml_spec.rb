require 'spec_helper'

describe "avaliacaos/index" do
  before(:each) do
    assign(:avaliacaos, [
      stub_model(Avaliacao,
        :queixa_principal => "MyText",
        :anamnese => "MyText"
      ),
      stub_model(Avaliacao,
        :queixa_principal => "MyText",
        :anamnese => "MyText"
      )
    ])
  end

  it "renders a list of avaliacaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
