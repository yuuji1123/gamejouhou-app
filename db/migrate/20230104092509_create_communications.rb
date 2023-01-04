class CreateCommunications < ActiveRecord::Migration[6.0]
  def change
    create_table :communications do |t|
      t.integer :user_id,          null: false, foreign_key: true
      t.integer :game_id,          null: false, foreign_key: true
      t.text :text,                null: false
      t.timestamps
    end
  end
end
