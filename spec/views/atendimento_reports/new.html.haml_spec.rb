require 'spec_helper'

describe "atendimento_reports/new" do
  before(:each) do
    assign(:atendimento_report, stub_model(AtendimentoReport).as_new_record)
  end

  it "renders new atendimento_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => atendimento_reports_path, :method => "post" do
    end
  end
end
