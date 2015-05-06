require 'spec_helper'

describe "exame_complementars/show" do
  before(:each) do
    @exame_complementar = assign(:exame_complementar, stub_model(ExameComplementar,
      :glicose => "9.99",
      :tsh => "9.99",
      :b12 => "9.99",
      :acido_folico => "9.99",
      :vdrl => "9.99",
      :hemograma => "9.99",
      :ht => "9.99",
      :hc => "9.99",
      :hmgl => "9.99",
      :leucocitos => "9.99",
      :creatinina => "9.99",
      :sodio => "9.99",
      :potassio => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
