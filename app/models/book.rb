class Book < ApplicationRecord
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :title, presence: true
end
