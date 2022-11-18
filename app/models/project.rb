class Project < ApplicationRecord
  has_many :project_users
  has_many :users, through: :project_users
  has_many :tracks
  belongs_to :audio_file_service
  validates :title, presence: true
end