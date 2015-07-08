require 'spec_helper'

describe "cerads/new" do
  before(:each) do
    assign(:cerad, stub_model(Cerad,
      :pontos => 1,
      :tentativa1 => 1,
      :tentativa2 => 1,
      :tentativa3 => 1,
      :atendimento_id => 1
    ).as_new_record)
  end

  it "renders new cerad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cerads_path, :method => "post" do
      assert_select "input#cerad_pontos", :name => "cerad[pontos]"
      assert_select "input#cerad_tentativa1", :name => "cerad[tentativa1]"
      assert_select "input#cerad_tentativa2", :name => "cerad[tentativa2]"
      assert_select "input#cerad_tentativa3", :name => "cerad[tentativa3]"
      assert_select "input#cerad_atendimento_id", :name => "cerad[atendimento_id]"
    end
  end
end
