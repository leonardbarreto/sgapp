require 'spec_helper'

describe "cdrs/index" do
  before(:each) do
    assign(:cdrs, [
      stub_model(Cdr,
        :pontos => "Pontos",
        :atendimento_id => 1,
        :tipo_exame_id => 2
      ),
      stub_model(Cdr,
        :pontos => "Pontos",
        :atendimento_id => 1,
        :tipo_exame_id => 2
      )
    ])
  end

  it "renders a list of cdrs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pontos".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
