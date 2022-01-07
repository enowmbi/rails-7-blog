FactoryBot.define do
  factory :post do
    title { "MyString" }
    summary { "MyString" }
    content { "MyText" }
    published { false }
  end
end
