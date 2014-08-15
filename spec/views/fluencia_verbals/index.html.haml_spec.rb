require 'spec_helper'

describe "fluencia_verbals/index" do
  before(:each) do
    assign(:fluencia_verbals, [
      stub_model(FluenciaVerbal,
        :pontos => "Pontos",
        :atendimento_id => 1,
        :tipo_exame_id => 2
      ),
      stub_model(FluenciaVerbal,
        :pontos => "Pontos",
        :atendimento_id => 1,
        :tipo_exame_id => 2
      )
    ])
  end

  it "renders a list of fluencia_verbals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pontos".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
