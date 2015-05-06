require 'spec_helper'

describe "funcionario_reports/show" do
  before(:each) do
    @funcionario_report = assign(:funcionario_report, stub_model(FuncionarioReport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
