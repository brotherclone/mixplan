class ProjectTrack < ApplicationRecord
  belongs_to :track
  belongs_to :project
end