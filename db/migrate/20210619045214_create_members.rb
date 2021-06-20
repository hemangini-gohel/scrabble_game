class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact_number
      
      t.timestamps
    end
  end
end
