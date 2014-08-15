require 'spec_helper'

describe "gds/edit" do
  before(:each) do
    @gd = assign(:gd, stub_model(Gd,
      :pontos => 1,
      :atendimento_id => 1,
      :tipo_exame_id => 1
    ))
  end

  it "renders the edit gd form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gds_path(@gd), :method => "post" do
      assert_select "input#gd_pontos", :name => "gd[pontos]"
      assert_select "input#gd_atendimento_id", :name => "gd[atendimento_id]"
      assert_select "input#gd_tipo_exame_id", :name => "gd[tipo_exame_id]"
    end
  end
end
