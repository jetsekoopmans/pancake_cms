class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :url
      t.datetime :date
      t.text :excerpt
      t.text :content

      t.timestamps
    end
  end
end