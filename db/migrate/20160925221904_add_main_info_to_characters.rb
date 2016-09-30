class AddMainInfoToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :background, :string
    add_column :characters, :race, :string
    add_column :characters, :alignment, :string
    add_column :characters, :experience_points, :string
    add_column :characters, :personality_traits, :string
    add_column :characters, :ideals, :string
    add_column :characters, :bonds, :string
    add_column :characters, :flaws, :string
    add_column :characters, :prof_lang, :string
    add_column :characters, :features_trait, :string
    add_column :characters, :equipment, :string
    add_column :characters, :max_hit_points, :integer
    add_column :characters, :current_hit_points, :integer
    add_column :characters, :temporary_hit_points, :integer
    add_column :characters, :hit_dice, :string
  end
end
