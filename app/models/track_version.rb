class TrackVersion < ApplicationRecord
  belongs_to :track
  has_one :audio_file
  has_many :track_issues
end