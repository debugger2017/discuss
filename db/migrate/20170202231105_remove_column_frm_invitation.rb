class RemoveColumnFrmInvitation < ActiveRecord::Migration[5.0]
  def change
  	remove_column :invitations , :is_accepted
  	add_column :invitations , :is_accepted , :boolean
  end
end
