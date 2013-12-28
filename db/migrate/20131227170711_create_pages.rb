class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :url, :unique => true
      t.string :meta_description
      t.string :meta_keywords
      t.string :menu
      t.integer :position, :default => 0
      t.string :template, :default => 'default'

      t.timestamps
    end
  end
end
