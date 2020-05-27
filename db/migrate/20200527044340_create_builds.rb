class CreateBuilds < ActiveRecord::Migration[6.0]
  def change
    create_table :builds do |t|
      t.integer :user_id
      t.integer :suit_id
      t.string :name  
    end
  end
end
