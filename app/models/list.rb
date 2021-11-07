class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates_associated :bookmarks
  has_one_attached :photo
end
