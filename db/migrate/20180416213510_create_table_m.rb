class CreateTableM < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :faculty_id, :integer
    add_index :groups, :faculty_id
    end
  end

