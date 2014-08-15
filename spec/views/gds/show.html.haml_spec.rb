require 'spec_helper'

describe "gds/show" do
  before(:each) do
    @gd = assign(:gd, stub_model(Gd,
      :pontos => 1,
      :atendimento_id => 2,
      :tipo_exame_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
