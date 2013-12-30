class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :content
      t.integer :pages_id

      t.timestamps
    end
  end
end
