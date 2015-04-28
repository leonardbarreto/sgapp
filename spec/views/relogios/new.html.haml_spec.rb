require 'spec_helper'

describe "relogios/new" do
  before(:each) do
    assign(:relogio, stub_model(Relogio,
      :pontos => 1,
      :atendimento_id => 1
    ).as_new_record)
  end

  it "renders new relogio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relogios_path, :method => "post" do
      assert_select "input#relogio_pontos", :name => "relogio[pontos]"
      assert_select "input#relogio_atendimento_id", :name => "relogio[atendimento_id]"
    end
  end
end
