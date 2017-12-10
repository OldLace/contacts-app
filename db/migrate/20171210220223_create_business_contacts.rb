class CreateBusinessContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :business_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :phone
      t.string :email

      t.timestamps
    end
    add_index :business_contacts, :first_name
    add_index :business_contacts, :last_name
    add_index :business_contacts, :company
  end
end
