require 'spec_helper'

describe "status/index" do
  before(:each) do
    assign(:status, [
      stub_model(Status,
        :tipo => "Tipo"
      ),
      stub_model(Status,
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of status" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
