require 'spec_helper'

describe "doencas/new" do
  before(:each) do
    assign(:doenca, stub_model(Doenca,
      :descricao => "MyString",
      :cid10 => "MyString"
    ).as_new_record)
  end

  it "renders new doenca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doencas_path, :method => "post" do
      assert_select "input#doenca_descricao", :name => "doenca[descricao]"
      assert_select "input#doenca_cid10", :name => "doenca[cid10]"
    end
  end
end
