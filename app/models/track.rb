class Track < ApplicationRecord
  has_many :project_tracks
  has_many :projects, through: :project_tracks
  has_many :track_versions
end