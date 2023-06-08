class Book < ApplicationRecord
  validates :vinculo, :titulo, :autor, :edicao, :issn, :editora, presence: true
  validates_comparison_of :ano, greater_than_or_equal_to: 1900, less_than_or_equal_to: 2019
end
