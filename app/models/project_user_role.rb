class ProjectUserRole < ApplicationRecord
  belongs_to :user_role
  belongs_to :project_user
end