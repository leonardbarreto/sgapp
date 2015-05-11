require 'spec_helper'

describe "doencas/show" do
  before(:each) do
    @doenca = assign(:doenca, stub_model(Doenca,
      :descricao => "Descricao",
      :cid10 => "Cid10"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    rendered.should match(/Cid10/)
  end
end
