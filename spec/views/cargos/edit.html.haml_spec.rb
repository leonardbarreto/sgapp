require 'spec_helper'

describe "cargos/edit" do
  before(:each) do
    @cargo = assign(:cargo, stub_model(Cargo,
      :descricao => "MyString",
      :doc => "MyString",
      :tipodoc => "MyString",
      :funcao_id => 1
    ))
  end

  it "renders the edit cargo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cargos_path(@cargo), :method => "post" do
      assert_select "input#cargo_descricao", :name => "cargo[descricao]"
      assert_select "input#cargo_doc", :name => "cargo[doc]"
      assert_select "input#cargo_tipodoc", :name => "cargo[tipodoc]"
      assert_select "input#cargo_funcao_id", :name => "cargo[funcao_id]"
    end
  end
end
