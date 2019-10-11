class CreateZombies < ActiveRecord::Migration[5.2]
  def change
    create_table :zombies do |t|
      t.string :name
      t.integer :kills
      t.string :photo
      t.integer :health

      t.timestamps
    end
  end
end
