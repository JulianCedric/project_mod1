class CreateMagicologies < ActiveRecord::Migration[6.0]
  def change
    create_table :magicologies do |t|
      t.integer :villain_id
      t.integer :ability_id
      t.string :name 
    end 
  end
end
