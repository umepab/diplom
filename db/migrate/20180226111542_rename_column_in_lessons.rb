class RenameColumnInLessons < ActiveRecord::Migration[5.1]
  def change
    rename_column :lessons, :body, :notes
  end
end
