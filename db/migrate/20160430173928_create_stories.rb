class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :overview
      t.text :story
      t.string :source
      t.integer :user_id
      t.datetime :published

      t.timestamps null: false
    end
  end
end
