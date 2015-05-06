require 'spec_helper'

describe "ressonancia/new" do
  before(:each) do
    assign(:ressonancium, stub_model(Ressonancium,
      :laudo => "MyText",
      :atendimento_id => 1
    ).as_new_record)
  end

  it "renders new ressonancium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ressonancia_path, :method => "post" do
      assert_select "textarea#ressonancium_laudo", :name => "ressonancium[laudo]"
      assert_select "input#ressonancium_atendimento_id", :name => "ressonancium[atendimento_id]"
    end
  end
end
