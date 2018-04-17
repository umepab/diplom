class Speciality < ApplicationRecord
  has_many :groups
  belongs_to :user
end
