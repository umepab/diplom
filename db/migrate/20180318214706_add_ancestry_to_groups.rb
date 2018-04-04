class AddAncestryToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :ancestry, :string
  end
end
