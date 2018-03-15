class AddGroupIdToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :group_id, :integer
    add_index :lessons, :group_id
  end
end
