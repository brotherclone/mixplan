class ProjectUser < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :track_issues
  has_many :project_user_roles
  has_many :user_roles, through: :project_user_roles
end