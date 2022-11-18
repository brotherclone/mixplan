class TrackStageCategory < ApplicationRecord
  has_many :track_stages
  validates :category_sequence, presence: true
  validates :name, presence: true
end