class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :user

  validates :title, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :fee, presence: true

  GENRES = ["Reggae", "Hip-Hop", "Trance", "Techno", "House", "EDM", "J-pop", "Rock"].freeze
end
