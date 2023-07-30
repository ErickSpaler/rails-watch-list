class List < ApplicationRecord
  has_many :bookmark, dependent: :destroy
  has_many :movies, dependent: :destroy

  validation :name, presence: true, uniqueness: true
end
