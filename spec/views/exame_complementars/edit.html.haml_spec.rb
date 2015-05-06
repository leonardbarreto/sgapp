require 'spec_helper'

describe "exame_complementars/edit" do
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

  it "renders the edit exame_complementar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exame_complementars_path(@exame_complementar), :method => "post" do
      assert_select "input#exame_complementar_glicose", :name => "exame_complementar[glicose]"
      assert_select "input#exame_complementar_tsh", :name => "exame_complementar[tsh]"
      assert_select "input#exame_complementar_b12", :name => "exame_complementar[b12]"
      assert_select "input#exame_complementar_acido_folico", :name => "exame_complementar[acido_folico]"
      assert_select "input#exame_complementar_vdrl", :name => "exame_complementar[vdrl]"
      assert_select "input#exame_complementar_hemograma", :name => "exame_complementar[hemograma]"
      assert_select "input#exame_complementar_ht", :name => "exame_complementar[ht]"
      assert_select "input#exame_complementar_hc", :name => "exame_complementar[hc]"
      assert_select "input#exame_complementar_hmgl", :name => "exame_complementar[hmgl]"
      assert_select "input#exame_complementar_leucocitos", :name => "exame_complementar[leucocitos]"
      assert_select "input#exame_complementar_creatinina", :name => "exame_complementar[creatinina]"
      assert_select "input#exame_complementar_sodio", :name => "exame_complementar[sodio]"
      assert_select "input#exame_complementar_potassio", :name => "exame_complementar[potassio]"
    end
  end
end
