class RenameColumnDate < ActiveRecord::Migration[5.1]
    def change
      remove_column :schedules, :date
      end
end
