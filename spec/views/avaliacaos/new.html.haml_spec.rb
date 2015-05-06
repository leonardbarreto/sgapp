require 'spec_helper'

describe "avaliacaos/new" do
  before(:each) do
    assign(:avaliacao, stub_model(Avaliacao,
      :queixa_principal => "MyText",
      :anamnese => "MyText"
    ).as_new_record)
  end

  it "renders new avaliacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => avaliacaos_path, :method => "post" do
      assert_select "textarea#avaliacao_queixa_principal", :name => "avaliacao[queixa_principal]"
      assert_select "textarea#avaliacao_anamnese", :name => "avaliacao[anamnese]"
    end
  end
end
