class Issue < ApplicationRecord
  belongs_to :track
  has_many :track_issues
  has_many :track_versions, through: :track_issues
end