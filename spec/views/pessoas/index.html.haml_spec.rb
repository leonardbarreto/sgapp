require 'spec_helper'

describe "pessoas/index" do
  before(:each) do
    assign(:pessoas, [
      stub_model(Pessoa,
        :nome => "Nome",
        :sexo => "Sexo",
        :naturalidade => "Naturalidade",
        :nacionalidade => "Nacionalidade",
        :identidade => "Identidade",
        :cpf => "Cpf",
        :peso => 1.5,
        :nome_pai => "Nome Pai",
        :nome_mae => "Nome Mae",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :municipio_id => 1,
        :telefone => "Telefone",
        :telefonecel => "Telefonecel"
      ),
      stub_model(Pessoa,
        :nome => "Nome",
        :sexo => "Sexo",
        :naturalidade => "Naturalidade",
        :nacionalidade => "Nacionalidade",
        :identidade => "Identidade",
        :cpf => "Cpf",
        :peso => 1.5,
        :nome_pai => "Nome Pai",
        :nome_mae => "Nome Mae",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :municipio_id => 1,
        :telefone => "Telefone",
        :telefonecel => "Telefonecel"
      )
    ])
  end

  it "renders a list of pessoas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Naturalidade".to_s, :count => 2
    assert_select "tr>td", :text => "Nacionalidade".to_s, :count => 2
    assert_select "tr>td", :text => "Identidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Nome Pai".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Mae".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Telefonecel".to_s, :count => 2
  end
end
