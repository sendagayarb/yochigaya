class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_name
      t.text :body
      t.datetime :tweeted_at

      t.timestamps
    end
  end
end
