FactoryBot.define do
  factory :project do
    title { Faker::Name.unique.name }
    audio_file_service
  end
end