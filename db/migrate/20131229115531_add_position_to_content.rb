class AddPositionToContent < ActiveRecord::Migration
  def change
    add_column :contents, :position, :integer
  end
end
