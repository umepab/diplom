class Group < ApplicationRecord
  has_many :lessons
  belongs_to :user
  has_one :speciality


  validates :name, presence: true

  has_ancestry
end
