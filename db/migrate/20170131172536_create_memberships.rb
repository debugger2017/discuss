class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :group_id
      t.boolean :is_admin 	
      t.timestamps
    end
    add_foreign_key :memberships , :groups , column: :group_id
    add_foreign_key :memberships , :users 
  end
end
