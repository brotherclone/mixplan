FactoryBot.define do
  factory :audio_file do
    track_version
    audio_file_service
    file_meta_blob { Faker::Json.shallow_json(width: 3, options: { key: 'Lorem.word', value: 'Lorem.word' }) }
  end
end