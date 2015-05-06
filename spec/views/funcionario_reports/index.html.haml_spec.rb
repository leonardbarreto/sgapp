require 'spec_helper'

describe "funcionario_reports/index" do
  before(:each) do
    assign(:funcionario_reports, [
      stub_model(FuncionarioReport),
      stub_model(FuncionarioReport)
    ])
  end

  it "renders a list of funcionario_reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
