FactoryBot.define do
  factory :track_issue do
    issue
    project_user
    track_version
    comment { Faker::Lorem.paragraph }
    vote { 1 }
  end
end