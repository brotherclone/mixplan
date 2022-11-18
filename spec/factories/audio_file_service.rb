FactoryBot.define do
  factory :audio_file_service do
    name { Faker::Lorem.word }
    factory :audio_file_service_with_project do
      after(:create) do |service|
        create(:project, audio_file_service: service)
      end
    end
  end
end