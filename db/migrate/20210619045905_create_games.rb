class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
