require 'spec_helper'

describe "funcionarios/index" do
  before(:each) do
    assign(:funcionarios, [
      stub_model(Funcionario,
        :matricula => "",
        :pessoa_id => 1
      ),
      stub_model(Funcionario,
        :matricula => "",
        :pessoa_id => 1
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
