FactoryBot.define do
  factory :issue do
    track
    name { Faker::Lorem.word }
    status { 1 }
  end
end