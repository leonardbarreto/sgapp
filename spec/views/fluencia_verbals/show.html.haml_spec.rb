require 'spec_helper'

describe "fluencia_verbals/show" do
  before(:each) do
    @fluencia_verbal = assign(:fluencia_verbal, stub_model(FluenciaVerbal,
      :pontos => "Pontos",
      :atendimento_id => 1,
      :tipo_exame_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pontos/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
