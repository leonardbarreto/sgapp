require 'spec_helper'

describe "avaliacaos/edit" do
  before(:each) do
    @avaliacao = assign(:avaliacao, stub_model(Avaliacao,
      :queixa_principal => "MyText",
      :anamnese => "MyText"
    ))
  end

  it "renders the edit avaliacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => avaliacaos_path(@avaliacao), :method => "post" do
      assert_select "textarea#avaliacao_queixa_principal", :name => "avaliacao[queixa_principal]"
      assert_select "textarea#avaliacao_anamnese", :name => "avaliacao[anamnese]"
    end
  end
end
