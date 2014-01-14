require 'spec_helper'

describe "tipo_atendimentos/new" do
  before(:each) do
    assign(:tipo_atendimento, stub_model(TipoAtendimento,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_atendimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_atendimentos_path, :method => "post" do
      assert_select "input#tipo_atendimento_descricao", :name => "tipo_atendimento[descricao]"
    end
  end
end
