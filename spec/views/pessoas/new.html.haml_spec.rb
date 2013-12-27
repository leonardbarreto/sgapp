require 'spec_helper'

describe "pessoas/new" do
  before(:each) do
    assign(:pessoa, stub_model(Pessoa,
      :nome => "MyString",
      :sexo => "MyString",
      :naturalidade => "MyString",
      :nacionalidade => "MyString",
      :identidade => "MyString",
      :cpf => "MyString",
      :peso => 1.5,
      :nome_pai => "MyString",
      :nome_mae => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :municipio_id => 1,
      :telefone => "MyString",
      :telefonecel => "MyString"
    ).as_new_record)
  end

  it "renders new pessoa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pessoas_path, :method => "post" do
      assert_select "input#pessoa_nome", :name => "pessoa[nome]"
      assert_select "input#pessoa_sexo", :name => "pessoa[sexo]"
      assert_select "input#pessoa_naturalidade", :name => "pessoa[naturalidade]"
      assert_select "input#pessoa_nacionalidade", :name => "pessoa[nacionalidade]"
      assert_select "input#pessoa_identidade", :name => "pessoa[identidade]"
      assert_select "input#pessoa_cpf", :name => "pessoa[cpf]"
      assert_select "input#pessoa_peso", :name => "pessoa[peso]"
      assert_select "input#pessoa_nome_pai", :name => "pessoa[nome_pai]"
      assert_select "input#pessoa_nome_mae", :name => "pessoa[nome_mae]"
      assert_select "input#pessoa_endereco", :name => "pessoa[endereco]"
      assert_select "input#pessoa_bairro", :name => "pessoa[bairro]"
      assert_select "input#pessoa_municipio_id", :name => "pessoa[municipio_id]"
      assert_select "input#pessoa_telefone", :name => "pessoa[telefone]"
      assert_select "input#pessoa_telefonecel", :name => "pessoa[telefonecel]"
    end
  end
end
