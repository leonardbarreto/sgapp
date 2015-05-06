require 'spec_helper'

describe "funcionario_reports/edit" do
  before(:each) do
    @funcionario_report = assign(:funcionario_report, stub_model(FuncionarioReport))
  end

  it "renders the edit funcionario_report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionario_reports_path(@funcionario_report), :method => "post" do
    end
  end
end
