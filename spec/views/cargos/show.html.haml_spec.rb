require 'spec_helper'

describe "cargos/show" do
  before(:each) do
    @cargo = assign(:cargo, stub_model(Cargo,
      :descricao => "Descricao",
      :doc => "Doc",
      :tipodoc => "Tipodoc",
      :funcao_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    rendered.should match(/Doc/)
    rendered.should match(/Tipodoc/)
    rendered.should match(/1/)
  end
end
