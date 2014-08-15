require 'spec_helper'

describe "cdrs/new" do
  before(:each) do
    assign(:cdr, stub_model(Cdr,
      :pontos => "MyString",
      :atendimento_id => 1,
      :tipo_exame_id => 1
    ).as_new_record)
  end

  it "renders new cdr form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cdrs_path, :method => "post" do
      assert_select "input#cdr_pontos", :name => "cdr[pontos]"
      assert_select "input#cdr_atendimento_id", :name => "cdr[atendimento_id]"
      assert_select "input#cdr_tipo_exame_id", :name => "cdr[tipo_exame_id]"
    end
  end
end
