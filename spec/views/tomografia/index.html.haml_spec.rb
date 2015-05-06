require 'spec_helper'

describe "tomografia/index" do
  before(:each) do
    assign(:tomografia, [
      stub_model(Tomografium,
        :laudo => "MyText",
        :atendimento_id => 1
      ),
      stub_model(Tomografium,
        :laudo => "MyText",
        :atendimento_id => 1
      )
    ])
  end

  it "renders a list of tomografia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
