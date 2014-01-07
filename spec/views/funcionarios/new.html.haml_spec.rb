require 'spec_helper'

describe "funcionarios/new" do
  before(:each) do
    assign(:funcionario, stub_model(Funcionario,
      :matricula => "",
      :pessoa_id => 1
    ).as_new_record)
  end

  it "renders new funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionarios_path, :method => "post" do
      assert_select "input#funcionario_matricula", :name => "funcionario[matricula]"
      assert_select "input#funcionario_pessoa_id", :name => "funcionario[pessoa_id]"
    end
  end
end
