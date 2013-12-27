require 'spec_helper'

describe "pacientes/edit" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
      :peso => 1
    ))
  end

  it "renders the edit paciente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacientes_path(@paciente), :method => "post" do
      assert_select "input#paciente_peso", :name => "paciente[peso]"
    end
  end
end
