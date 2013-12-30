class RemoveAncestryFromSection < ActiveRecord::Migration
  def change
    remove_column :sections, :ancestry, :string
  end
end
