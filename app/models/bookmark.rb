class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }

  belongs_to :movie, validate: true
  validates :movie_id, uniqueness: { scope: :list_id }

  belongs_to :list, validate: true
  validates :list_id, uniqueness: { scope: :movie_id }
end
