require 'spec_helper'

describe "tomografia/new" do
  before(:each) do
    assign(:tomografium, stub_model(Tomografium,
      :laudo => "MyText",
      :atendimento_id => 1
    ).as_new_record)
  end

  it "renders new tomografium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tomografia_path, :method => "post" do
      assert_select "textarea#tomografium_laudo", :name => "tomografium[laudo]"
      assert_select "input#tomografium_atendimento_id", :name => "tomografium[atendimento_id]"
    end
  end
end
