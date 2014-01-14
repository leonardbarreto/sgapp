require 'spec_helper'

describe "tipo_atendimentos/edit" do
  before(:each) do
    @tipo_atendimento = assign(:tipo_atendimento, stub_model(TipoAtendimento,
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo_atendimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_atendimentos_path(@tipo_atendimento), :method => "post" do
      assert_select "input#tipo_atendimento_descricao", :name => "tipo_atendimento[descricao]"
    end
  end
end
