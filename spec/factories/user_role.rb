FactoryBot.define do
  factory :user_role do
    project_permission {0101}
    track_permission {0101}
    user_permission {0101}
    project_user_permission {1010}
    issue_permission {1111}
    track_version_permission {1010}
    audio_file_permission {1010}
    audio_file_service_permission {1010}
  end
end

