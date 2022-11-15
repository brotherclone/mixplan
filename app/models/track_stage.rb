class TrackStage < ApplicationRecord
  belongs_to :track_stage_category
  has_many :track_issue_stages
  has_many :track_issues, through: :track_issue_stages
end