class CreateTableSchedule < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :group_id
      t.integer :speciality_id
      t.datetime :date
      t.string :room

    end
  end
end
