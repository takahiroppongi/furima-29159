FactoryBot.define do
  factory :user do
    nick_name             { Faker::Name.name }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    second_name           { '山田' }
    first_name            { '陸太郎' }
    second_name_kana      { 'ヤマダ' }
    first_name_kana       { 'リクタロウ' }
    birthday              { '1992-12-12' }
  end
end
