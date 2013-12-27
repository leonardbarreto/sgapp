# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoa do
    nome "MyString"
    data_nas "2013-09-16"
    sexo "MyString"
    naturalidade "MyString"
    nacionalidade "MyString"
    identidade "MyString"
    cpf "MyString"
    peso 1.5
    nome_pai "MyString"
    nome_mae "MyString"
    endereco "MyString"
    bairro "MyString"
    municipio_id 1
    telefone "MyString"
    telefonecel "MyString"
  end
end
