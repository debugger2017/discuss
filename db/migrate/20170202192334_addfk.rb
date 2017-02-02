class Addfk < ActiveRecord::Migration[5.0]
  def change
  	remove_column :comments , :post_id
  	add_column :comments , :membership_id , :integer
  	add_foreign_key :comments , :memberships
  end
end
