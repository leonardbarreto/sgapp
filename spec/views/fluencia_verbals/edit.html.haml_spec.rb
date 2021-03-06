require 'spec_helper'

describe "fluencia_verbals/edit" do
  before(:each) do
    @fluencia_verbal = assign(:fluencia_verbal, stub_model(FluenciaVerbal,
      :pontos => "MyString",
      :atendimento_id => 1,
      :tipo_exame_id => 1
    ))
  end

  it "renders the edit fluencia_verbal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fluencia_verbals_path(@fluencia_verbal), :method => "post" do
      assert_select "input#fluencia_verbal_pontos", :name => "fluencia_verbal[pontos]"
      assert_select "input#fluencia_verbal_atendimento_id", :name => "fluencia_verbal[atendimento_id]"
      assert_select "input#fluencia_verbal_tipo_exame_id", :name => "fluencia_verbal[tipo_exame_id]"
    end
  end
end
