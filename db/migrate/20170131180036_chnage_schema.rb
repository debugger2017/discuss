class ChnageSchema < ActiveRecord::Migration[5.0]
  def change
  	remove_column :invitations , :is_read
  	change_column :invitations, :is_accepted, :boolean , :default => false
  end
end
