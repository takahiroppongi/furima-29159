FactoryBot.define do
  factory :item do
    name                  { Faker::Lorem.word }
    explanation           { Faker::Lorem.sentence }
    category_id           { 2 }
    status_id             { 2 }
    fee_id                { 2 }
    area_id               { 2 }
    day_id                { 2 }
    price                 { Faker::Number.between(from: 300, to: 9_999_999) }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
