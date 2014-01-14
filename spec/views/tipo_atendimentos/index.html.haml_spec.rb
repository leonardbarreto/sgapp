require 'spec_helper'

describe "tipo_atendimentos/index" do
  before(:each) do
    assign(:tipo_atendimentos, [
      stub_model(TipoAtendimento,
        :descricao => "Descricao"
      ),
      stub_model(TipoAtendimento,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipo_atendimentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
