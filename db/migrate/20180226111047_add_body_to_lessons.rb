class AddBodyToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :body, :text
  end
end
