class Venue < ApplicationRecord
  has_many :events

  validates :name, presence: true
  validates :area, presence: true

  AREAS = ["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県",]
end
