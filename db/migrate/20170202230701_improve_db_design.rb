class ImproveDbDesign < ActiveRecord::Migration[5.0]
  def change
  	remove_column :comments , :membership_id
  	add_column :comments , :user_id , :integer
  	add_foreign_key :comments , :users
  end
end
