class Lesson < ApplicationRecord
  mount_uploader :attachments, AttachmentsUploader
  validates :title, :notes, presence: true
  belongs_to :group
end
