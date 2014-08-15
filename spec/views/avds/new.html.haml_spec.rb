require 'spec_helper'

describe "avds/new" do
  before(:each) do
    assign(:avd, stub_model(Avd,
      :banho => "MyString",
      :vestir => "MyString",
      :higiene => "MyString",
      :transferencia => "MyString",
      :continencia => "MyString",
      :alimentacao => "MyString"
    ).as_new_record)
  end

  it "renders new avd form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => avds_path, :method => "post" do
      assert_select "input#avd_banho", :name => "avd[banho]"
      assert_select "input#avd_vestir", :name => "avd[vestir]"
      assert_select "input#avd_higiene", :name => "avd[higiene]"
      assert_select "input#avd_transferencia", :name => "avd[transferencia]"
      assert_select "input#avd_continencia", :name => "avd[continencia]"
      assert_select "input#avd_alimentacao", :name => "avd[alimentacao]"
    end
  end
end
