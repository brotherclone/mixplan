class TrackIssue < ApplicationRecord
  belongs_to :issue
  belongs_to :track_version
  belongs_to :project_user
  has_many :track_issue_stages
  has_many :track_stages, through: :track_issue_stages
end