class AddFkConstraintToInvitations < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :invitations , :users , column: :sender_id
  	add_foreign_key :invitations , :users , column: :receiver_id
  	add_foreign_key :invitations , :groups
  end
end
