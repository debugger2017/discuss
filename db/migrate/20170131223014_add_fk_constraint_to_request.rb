class AddFkConstraintToRequest < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :requests , :groups , column: :group_id
    add_foreign_key :requests , :users , column: :sender_id
  end
end
