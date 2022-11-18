class Track < ApplicationRecord
  belongs_to :project
  has_many :track_versions
  has_many :issues
end