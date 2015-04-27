require 'spec_helper'

describe "agenda_profissionals/index" do
  before(:each) do
    assign(:agenda_profissionals, [
      stub_model(AgendaProfissional,
        :dia => 1,
        :hora_fim => "Hora Fim",
        :funcionario_id => 2
      ),
      stub_model(AgendaProfissional,
        :dia => 1,
        :hora_fim => "Hora Fim",
        :funcionario_id => 2
      )
    ])
  end

  it "renders a list of agenda_profissionals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Hora Fim".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
