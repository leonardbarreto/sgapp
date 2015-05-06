require 'spec_helper'

describe "exame_complementars/index" do
  before(:each) do
    assign(:exame_complementars, [
      stub_model(ExameComplementar,
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
      ),
      stub_model(ExameComplementar,
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
      )
    ])
  end

  it "renders a list of exame_complementars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
