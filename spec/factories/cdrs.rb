# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cdr do
    pontos "MyString"
    atendimento_id 1
    tipo_exame_id 1
  end
end
