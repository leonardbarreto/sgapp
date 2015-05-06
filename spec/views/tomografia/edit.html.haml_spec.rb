require 'spec_helper'

describe "tomografia/edit" do
  before(:each) do
    @tomografium = assign(:tomografium, stub_model(Tomografium,
      :laudo => "MyText",
      :atendimento_id => 1
    ))
  end

  it "renders the edit tomografium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tomografia_path(@tomografium), :method => "post" do
      assert_select "textarea#tomografium_laudo", :name => "tomografium[laudo]"
      assert_select "input#tomografium_atendimento_id", :name => "tomografium[atendimento_id]"
    end
  end
end
