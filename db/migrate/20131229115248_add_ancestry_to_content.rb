class AddAncestryToContent < ActiveRecord::Migration
  def change
    add_column :contents, :ancestry, :string, :default => 0
  end
end
