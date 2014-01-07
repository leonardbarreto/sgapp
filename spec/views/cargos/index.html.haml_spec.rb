require 'spec_helper'

describe "cargos/index" do
  before(:each) do
    assign(:cargos, [
      stub_model(Cargo,
        :descricao => "Descricao",
        :doc => "Doc",
        :tipodoc => "Tipodoc",
        :funcao_id => 1
      ),
      stub_model(Cargo,
        :descricao => "Descricao",
        :doc => "Doc",
        :tipodoc => "Tipodoc",
        :funcao_id => 1
      )
    ])
  end

  it "renders a list of cargos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Doc".to_s, :count => 2
    assert_select "tr>td", :text => "Tipodoc".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
