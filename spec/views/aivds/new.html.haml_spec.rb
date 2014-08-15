require 'spec_helper'

describe "aivds/new" do
  before(:each) do
    assign(:aivd, stub_model(Aivd,
      :pontos => 1,
      :dependencia => 1,
      :atendimento_id => 1,
      :tipo_exame_id => 1
    ).as_new_record)
  end

  it "renders new aivd form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => aivds_path, :method => "post" do
      assert_select "input#aivd_pontos", :name => "aivd[pontos]"
      assert_select "input#aivd_dependencia", :name => "aivd[dependencia]"
      assert_select "input#aivd_atendimento_id", :name => "aivd[atendimento_id]"
      assert_select "input#aivd_tipo_exame_id", :name => "aivd[tipo_exame_id]"
    end
  end
end
