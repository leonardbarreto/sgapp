require 'spec_helper'

describe "tomografia/show" do
  before(:each) do
    @tomografium = assign(:tomografium, stub_model(Tomografium,
      :laudo => "MyText",
      :atendimento_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
