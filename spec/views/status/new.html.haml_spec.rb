require 'spec_helper'

describe "status/new" do
  before(:each) do
    assign(:status, stub_model(Status,
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => status_index_path, :method => "post" do
      assert_select "input#status_tipo", :name => "status[tipo]"
    end
  end
end
