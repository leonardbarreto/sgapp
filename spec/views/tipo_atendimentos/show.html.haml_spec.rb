require 'spec_helper'

describe "tipo_atendimentos/show" do
  before(:each) do
    @tipo_atendimento = assign(:tipo_atendimento, stub_model(TipoAtendimento,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
