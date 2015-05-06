require 'spec_helper'

describe "ressonancias/show" do
  before(:each) do
    @ressonancia = assign(:ressonancia, stub_model(Ressonancia,
      :laudo => "MyText",
      :atendimento_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
