class AddTeatcherToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :teacher, :boolean, default: false

  end
end
