class AddAncestryToPages < ActiveRecord::Migration
  def change
    add_column :pages, :ancestry, :string, :default => 0
  end
end
