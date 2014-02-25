# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :conta do
    valorTotal "MyString"
    pago "MyString"
    consumo nil
  end
end
