class Zombie < ApplicationRecord
  validates :name, :health, :weapon, :photo, presence: true
  validates :weapon, inclusion: { in: %w(Hax Chainsaw Hammer),
    message: "%{value} no puedes elegir esa arma" }
  has_many :ratings
end
