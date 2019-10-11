class AddWeaponToZombies < ActiveRecord::Migration[5.2]
  def change
    add_column :zombies, :weapon, :string
  end
end
