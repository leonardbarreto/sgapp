require 'spec_helper'

describe "funcionarios/show" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :matricula => "",
      :pessoa_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
