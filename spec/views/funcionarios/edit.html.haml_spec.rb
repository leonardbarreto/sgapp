require 'spec_helper'

describe "funcionarios/edit" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :matricula => "",
      :pessoa_id => 1
    ))
  end

  it "renders the edit funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionarios_path(@funcionario), :method => "post" do
      assert_select "input#funcionario_matricula", :name => "funcionario[matricula]"
      assert_select "input#funcionario_pessoa_id", :name => "funcionario[pessoa_id]"
    end
  end
end
