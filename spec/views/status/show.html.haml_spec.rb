require 'spec_helper'

describe "status/show" do
  before(:each) do
    @status = assign(:status, stub_model(Status,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
