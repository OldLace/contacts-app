class CreatePersonalContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps
    end
    add_index :personal_contacts, :first_name
    add_index :personal_contacts, :last_name
  end
end
