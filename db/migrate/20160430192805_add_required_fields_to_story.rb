class AddRequiredFieldsToStory < ActiveRecord::Migration
  def change
    change_column :stories, :title,    :string,  null: false
    change_column :stories, :overview, :string,  null: false
    change_column :stories, :story,    :text,    null: false
    change_column :stories, :user_id,  :integer, null: false
    add_index :stories, :user_id
    add_index :stories, :title, unique: true
    add_index :stories, :published
  end
end
