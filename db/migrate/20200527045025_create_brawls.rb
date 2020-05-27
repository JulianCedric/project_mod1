class CreateBrawls < ActiveRecord::Migration[6.0]
  def change
    create_table :brawls do |t|
      t.integer :user_id
      t.integer :villain_id
      t.string :name 
    end
  end
end
