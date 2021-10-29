class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates_associated :bookmarks
  has_one_attached :photo
end
