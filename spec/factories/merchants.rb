FactoryBot.define do
  factory :merchant do
    # name { "MyString" }
    sequence(:name) { |n| "Merchant #{n}"}
  end
end
