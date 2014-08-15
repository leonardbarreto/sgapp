require 'spec_helper'

describe "aivds/show" do
  before(:each) do
    @aivd = assign(:aivd, stub_model(Aivd,
      :pontos => 1,
      :dependencia => 2,
      :atendimento_id => 3,
      :tipo_exame_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
