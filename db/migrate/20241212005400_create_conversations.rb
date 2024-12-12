class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :name
      t.integer, :user_ids
      t.true :array

      t.timestamps
    end
  end
end