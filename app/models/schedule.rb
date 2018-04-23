class Schedule < ApplicationRecord
  has_many :lessons
  belongs_to :group
  accepts_nested_attributes_for :lessons

end
