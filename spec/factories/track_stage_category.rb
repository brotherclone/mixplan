FactoryBot.define do
  factory :track_stage_category do
    name {Faker::Lorem.word}
    category_sequence {Faker::Number.number}
  end
end