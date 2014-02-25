# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hospedagem do
    dataEntrada "MyString"
    dataSaida "MyString"
    conta nil
    hospede nil
    aposento nil
  end
end
