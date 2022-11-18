class AudioFile < ApplicationRecord
  belongs_to :track_version
  belongs_to :audio_file_service
end