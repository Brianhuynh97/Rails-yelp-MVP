class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
                                    message: `%{value} is not a valid category` }
end
