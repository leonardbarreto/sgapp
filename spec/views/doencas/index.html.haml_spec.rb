require 'spec_helper'

describe "doencas/index" do
  before(:each) do
    assign(:doencas, [
      stub_model(Doenca,
        :descricao => "Descricao",
        :cid10 => "Cid10"
      ),
      stub_model(Doenca,
        :descricao => "Descricao",
        :cid10 => "Cid10"
      )
    ])
  end

  it "renders a list of doencas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Cid10".to_s, :count => 2
  end
end
