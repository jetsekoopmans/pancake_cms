class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :content
      t.integer :pages_id

      t.timestamps
    end
  end
end
