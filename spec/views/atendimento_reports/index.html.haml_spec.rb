require 'spec_helper'

describe "atendimento_reports/index" do
  before(:each) do
    assign(:atendimento_reports, [
      stub_model(AtendimentoReport),
      stub_model(AtendimentoReport)
    ])
  end

  it "renders a list of atendimento_reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
