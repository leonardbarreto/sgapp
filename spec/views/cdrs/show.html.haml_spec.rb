require 'spec_helper'

describe "cdrs/show" do
  before(:each) do
    @cdr = assign(:cdr, stub_model(Cdr,
      :pontos => "Pontos",
      :atendimento_id => 1,
      :tipo_exame_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pontos/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
