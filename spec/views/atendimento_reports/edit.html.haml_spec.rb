require 'spec_helper'

describe "atendimento_reports/edit" do
  before(:each) do
    @atendimento_report = assign(:atendimento_report, stub_model(AtendimentoReport))
  end

  it "renders the edit atendimento_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => atendimento_reports_path(@atendimento_report), :method => "post" do
    end
  end
end
