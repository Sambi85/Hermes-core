class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations, id: :serial do |t|
      t.string :name

      t.timestamps
    end
  end
end
