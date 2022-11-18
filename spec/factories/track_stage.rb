FactoryBot.define do
  factory :track_stage do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    track_stage_category
  end
end