class Game < ApplicationRecord
  has_many_attached :images
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :os

  validates :title, presence: true
  validates :images, presence: true
  validates :text, presence: true
  validates :genre_id, presence: true
  validates :os_id, presence: true
  validates :price, presence: true
end
