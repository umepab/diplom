class AddIndexToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :lesson_id, :integer
    add_index :schedules, :lesson_id
  end
end
