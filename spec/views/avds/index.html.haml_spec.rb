require 'spec_helper'

describe "avds/index" do
  before(:each) do
    assign(:avds, [
      stub_model(Avd,
        :banho => "Banho",
        :vestir => "Vestir",
        :higiene => "Higiene",
        :transferencia => "Transferencia",
        :continencia => "Continencia",
        :alimentacao => "Alimentacao"
      ),
      stub_model(Avd,
        :banho => "Banho",
        :vestir => "Vestir",
        :higiene => "Higiene",
        :transferencia => "Transferencia",
        :continencia => "Continencia",
        :alimentacao => "Alimentacao"
      )
    ])
  end

  it "renders a list of avds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Banho".to_s, :count => 2
    assert_select "tr>td", :text => "Vestir".to_s, :count => 2
    assert_select "tr>td", :text => "Higiene".to_s, :count => 2
    assert_select "tr>td", :text => "Transferencia".to_s, :count => 2
    assert_select "tr>td", :text => "Continencia".to_s, :count => 2
    assert_select "tr>td", :text => "Alimentacao".to_s, :count => 2
  end
end
