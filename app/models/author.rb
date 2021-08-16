class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :book_authors

  validates :first_name, presence: true, length: {maximum: 25}
  validates :last_name, presence: true, length: {maximum: 25}
  validates :date_of_birth, presence: true
end
