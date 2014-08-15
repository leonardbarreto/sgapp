require 'spec_helper'

describe "gds/index" do
  before(:each) do
    assign(:gds, [
      stub_model(Gd,
        :pontos => 1,
        :atendimento_id => 2,
        :tipo_exame_id => 3
      ),
      stub_model(Gd,
        :pontos => 1,
        :atendimento_id => 2,
        :tipo_exame_id => 3
      )
    ])
  end

  it "renders a list of gds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
