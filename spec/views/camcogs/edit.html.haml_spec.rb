require 'spec_helper'

describe "camcogs/edit" do
  before(:each) do
    @camcog = assign(:camcog, stub_model(Camcog,
      :pontos => "MyString",
      :atendimento_id => 1,
      :tipo_exame_id => 1
    ))
  end

  it "renders the edit camcog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => camcogs_path(@camcog), :method => "post" do
      assert_select "input#camcog_pontos", :name => "camcog[pontos]"
      assert_select "input#camcog_atendimento_id", :name => "camcog[atendimento_id]"
      assert_select "input#camcog_tipo_exame_id", :name => "camcog[tipo_exame_id]"
    end
  end
end
