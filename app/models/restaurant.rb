class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all

  SPECIALITIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: SPECIALITIES }

end
