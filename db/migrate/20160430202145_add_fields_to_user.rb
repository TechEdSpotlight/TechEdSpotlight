class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :fname,    :string
    add_column :users, :lname,    :string
    add_column :users, :role,     :string
    add_column :users, :district, :string
    add_column :users, :city,     :string
    add_column :users, :state,    :string
    add_column :users, :interests, :string
    add_column :users, :platform, :string
    add_column :users, :subject,  :string
  end
end
