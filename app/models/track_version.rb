class TrackVersion < ApplicationRecord
  belongs_to :track
  has_many :audio_files
  has_many :track_issues
end