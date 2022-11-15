class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_users
  has_many :projects, through: :project_users
  has_many :user_roles
  has_many :issues
end
