class Game < ApplicationRecord
  has_many :images, dependent: :destroy
end
