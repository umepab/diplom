class Group < ApplicationRecord
  has_one :speciality
  has_many :lessons

  validates :name, presence: true

  has_ancestry
end
