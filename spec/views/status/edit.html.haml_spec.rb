require 'spec_helper'

describe "status/edit" do
  before(:each) do
    @status = assign(:status, stub_model(Status,
      :tipo => "MyString"
    ))
  end

  it "renders the edit status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => status_index_path(@status), :method => "post" do
      assert_select "input#status_tipo", :name => "status[tipo]"
    end
  end
end
