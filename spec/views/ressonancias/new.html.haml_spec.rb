require 'spec_helper'

describe "ressonancias/new" do
  before(:each) do
    assign(:ressonancia, stub_model(Ressonancia,
      :laudo => "MyText",
      :atendimento_id => 1
    ).as_new_record)
  end

  it "renders new ressonancia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ressonancias_path, :method => "post" do
      assert_select "textarea#ressonancia_laudo", :name => "ressonancia[laudo]"
      assert_select "input#ressonancia_atendimento_id", :name => "ressonancia[atendimento_id]"
    end
  end
end
