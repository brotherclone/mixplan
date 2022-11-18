class UserRole < ApplicationRecord
  has_many :project_user_roles
  has_many :project_users, through: :project_user_roles
end