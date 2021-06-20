class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      
      t.integer :score
      t.string :status

      t.references :game
      t.references :member

      t.timestamps
    end
  end
end
