class TrackIssueStage < ApplicationRecord
  belongs_to :track_stage
  belongs_to :track_issue
end