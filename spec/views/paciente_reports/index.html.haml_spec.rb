require 'spec_helper'

describe "paciente_reports/index" do
  before(:each) do
    assign(:paciente_reports, [
      stub_model(PacienteReport),
      stub_model(PacienteReport)
    ])
  end

  it "renders a list of paciente_reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
