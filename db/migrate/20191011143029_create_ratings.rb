class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.references :zombie, foreign_key: true

      t.timestamps
    end
  end
end
