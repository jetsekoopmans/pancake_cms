class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :response_subject
      t.text :response_message

      t.timestamps
    end
  end
end
