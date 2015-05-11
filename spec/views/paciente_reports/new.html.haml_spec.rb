require 'spec_helper'

describe "paciente_reports/new" do
  before(:each) do
    assign(:paciente_report, stub_model(PacienteReport).as_new_record)
  end

  it "renders new paciente_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paciente_reports_path, :method => "post" do
    end
  end
end
