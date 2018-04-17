class Faculty < ApplicationRecord
  has_many :specialities
  belongs_to :group
end
