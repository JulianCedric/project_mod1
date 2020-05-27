class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.integer :suit_id
      t.integer :ability_id
      t.string :name
    end 
  end
end
