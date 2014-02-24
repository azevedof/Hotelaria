# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :aposento do
    valor "MyString"
    descricao "MyString"
    numero "MyString"
    hotel nil
  end
end
