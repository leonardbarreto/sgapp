require 'spec_helper'

describe "ressonancias/index" do
  before(:each) do
    assign(:ressonancias, [
      stub_model(Ressonancia,
        :laudo => "MyText",
        :atendimento_id => 1
      ),
      stub_model(Ressonancia,
        :laudo => "MyText",
        :atendimento_id => 1
      )
    ])
  end

  it "renders a list of ressonancias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
