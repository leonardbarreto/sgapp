require 'spec_helper'

describe "ressonancia/edit" do
  before(:each) do
    @ressonancium = assign(:ressonancium, stub_model(Ressonancium,
      :laudo => "MyText",
      :atendimento_id => 1
    ))
  end

  it "renders the edit ressonancium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ressonancia_path(@ressonancium), :method => "post" do
      assert_select "textarea#ressonancium_laudo", :name => "ressonancium[laudo]"
      assert_select "input#ressonancium_atendimento_id", :name => "ressonancium[atendimento_id]"
    end
  end
end
