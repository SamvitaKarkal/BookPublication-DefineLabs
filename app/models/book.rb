class Book < ApplicationRecord
  has_many :book_authors
  has_many :authors, through: :book_authors
  accepts_nested_attributes_for :book_authors
  validates :title, presence: true
end
