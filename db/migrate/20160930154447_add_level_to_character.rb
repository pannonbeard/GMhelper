class AddLevelToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :level, :integer
  end
end
