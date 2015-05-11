require 'spec_helper'

describe "paciente_reports/show" do
  before(:each) do
    @paciente_report = assign(:paciente_report, stub_model(PacienteReport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
