class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.integer :sun_exposure
      t.integer :watering_freq
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
