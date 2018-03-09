class Lesson < ApplicationRecord
  mount_uploader :attachments, AttachmentsUploader
  validates :title, :notes, presence: true
end
