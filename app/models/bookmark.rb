class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: {scope: :list_id, message: 'is already in the list'}
  validation :name, presence: true, uniqueness: true

end