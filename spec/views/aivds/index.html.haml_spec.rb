require 'spec_helper'

describe "aivds/index" do
  before(:each) do
    assign(:aivds, [
      stub_model(Aivd,
        :pontos => 1,
        :dependencia => 2,
        :atendimento_id => 3,
        :tipo_exame_id => 4
      ),
      stub_model(Aivd,
        :pontos => 1,
        :dependencia => 2,
        :atendimento_id => 3,
        :tipo_exame_id => 4
      )
    ])
  end

  it "renders a list of aivds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
