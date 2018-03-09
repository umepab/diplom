class AddAttachmentsToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :attachments, :string
  end
end
