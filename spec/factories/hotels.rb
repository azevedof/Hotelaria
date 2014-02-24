# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hotel do
    nome "MyString"
    endereco "MyString"
    telefone "MyString"
    cidade "MyString"
    estado "MyString"
  end
end
