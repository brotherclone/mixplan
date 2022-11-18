FactoryBot.define do
  factory :track do
    title { Faker::Lorem.word }
    project
  end
end