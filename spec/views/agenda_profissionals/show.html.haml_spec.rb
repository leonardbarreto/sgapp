require 'spec_helper'

describe "agenda_profissionals/show" do
  before(:each) do
    @agenda_profissional = assign(:agenda_profissional, stub_model(AgendaProfissional,
      :dia => 1,
      :hora_fim => "Hora Fim",
      :funcionario_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Hora Fim/)
    rendered.should match(/2/)
  end
end
