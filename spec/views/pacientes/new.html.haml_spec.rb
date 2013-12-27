require 'spec_helper'

describe "pacientes/new" do
  before(:each) do
    assign(:paciente, stub_model(Paciente,
      :peso => 1
    ).as_new_record)
  end

  it "renders new paciente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacientes_path, :method => "post" do
      assert_select "input#paciente_peso", :name => "paciente[peso]"
    end
  end
end
