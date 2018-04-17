class Group < ApplicationRecord
  has_one :speciality


  validates :name, presence: true

  has_ancestry
end
