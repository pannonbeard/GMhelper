class AddPlayerClassToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :player_class, :string
  end
end
