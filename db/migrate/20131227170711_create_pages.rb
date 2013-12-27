class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :url
      t.string :metadata
      t.string :menu
      t.integer :position, :default => 0
      t.text :content

      t.timestamps
    end
  end
end
