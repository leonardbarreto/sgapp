require 'spec_helper'

describe "doencas/edit" do
  before(:each) do
    @doenca = assign(:doenca, stub_model(Doenca,
      :descricao => "MyString",
      :cid10 => "MyString"
    ))
  end

  it "renders the edit doenca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doencas_path(@doenca), :method => "post" do
      assert_select "input#doenca_descricao", :name => "doenca[descricao]"
      assert_select "input#doenca_cid10", :name => "doenca[cid10]"
    end
  end
end
