require 'spec_helper'

describe "relogios/show" do
  before(:each) do
    @relogio = assign(:relogio, stub_model(Relogio,
      :pontos => 1,
      :atendimento_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
