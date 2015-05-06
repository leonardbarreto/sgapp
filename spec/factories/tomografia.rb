# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tomografium do
    laudo "MyText"
    data_exame "2015-04-29"
    atendimento_id 1
  end
end
