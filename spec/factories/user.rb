FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    icon { Faker::Internet.url }
    user_name { Faker::Internet.user_name }
  end
end