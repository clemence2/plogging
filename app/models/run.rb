class Run < ApplicationRecord
  belongs_to :user
  has_many :participations, dependent: :destroy

  validates :starts_localisation, presence: true
  validates :ends_localisation, presence: true
end
