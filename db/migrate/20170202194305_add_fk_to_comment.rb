class AddFkToComment < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments , :post_id, :integer
  	remove_column :comments , :user_id
  	add_foreign_key :comments , :posts
  end
end
