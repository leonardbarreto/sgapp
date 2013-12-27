require 'spec_helper'

describe "pacientes/index" do
  before(:each) do
    assign(:pacientes, [
      stub_model(Paciente,
        :peso => 1
      ),
      stub_model(Paciente,
        :peso => 1
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
