require 'spec_helper'

describe "avds/show" do
  before(:each) do
    @avd = assign(:avd, stub_model(Avd,
      :banho => "Banho",
      :vestir => "Vestir",
      :higiene => "Higiene",
      :transferencia => "Transferencia",
      :continencia => "Continencia",
      :alimentacao => "Alimentacao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Banho/)
    rendered.should match(/Vestir/)
    rendered.should match(/Higiene/)
    rendered.should match(/Transferencia/)
    rendered.should match(/Continencia/)
    rendered.should match(/Alimentacao/)
  end
end
