class Project < ApplicationRecord
  has_many :project_users
  has_many :users, through: :project_users
  has_many :project_tracks
  has_many :tracks, through: :project_tracks
  has_many :project_user_roles
  has_many :user_roles, through: :project_user_roles
  has_one :audio_file_service
  validates :title, presence: true
end