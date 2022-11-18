FactoryBot.define do
  factory :track_version do
    track
    version_number { "1.1.1" }
    version_title { Faker::Lorem.word }
  end
end