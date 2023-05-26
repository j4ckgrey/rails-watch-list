class List < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :movies, through: :bookmarks
  has_many :bookmarks, dependent: :destroy
end
