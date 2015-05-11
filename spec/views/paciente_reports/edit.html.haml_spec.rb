require 'spec_helper'

describe "paciente_reports/edit" do
  before(:each) do
    @paciente_report = assign(:paciente_report, stub_model(PacienteReport))
  end

  it "renders the edit paciente_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paciente_reports_path(@paciente_report), :method => "post" do
    end
  end
end
