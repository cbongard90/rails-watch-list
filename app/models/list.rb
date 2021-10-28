class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :picture_url, presence: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates_associated :bookmarks
end
