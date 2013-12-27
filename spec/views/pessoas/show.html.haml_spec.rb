require 'spec_helper'

describe "pessoas/show" do
  before(:each) do
    @pessoa = assign(:pessoa, stub_model(Pessoa,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Sexo/)
    rendered.should match(/Naturalidade/)
    rendered.should match(/Nacionalidade/)
    rendered.should match(/Identidade/)
    rendered.should match(/Cpf/)
    rendered.should match(/1.5/)
    rendered.should match(/Nome Pai/)
    rendered.should match(/Nome Mae/)
    rendered.should match(/Endereco/)
    rendered.should match(/Bairro/)
    rendered.should match(/1/)
    rendered.should match(/Telefone/)
    rendered.should match(/Telefonecel/)
  end
end
