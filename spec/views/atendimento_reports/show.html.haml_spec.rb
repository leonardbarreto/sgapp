require 'spec_helper'

describe "atendimento_reports/show" do
  before(:each) do
    @atendimento_report = assign(:atendimento_report, stub_model(AtendimentoReport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
