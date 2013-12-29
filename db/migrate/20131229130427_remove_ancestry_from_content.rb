class RemoveAncestryFromContent < ActiveRecord::Migration
  def change
    remove_column :contents, :ancestry, :string
  end
end
