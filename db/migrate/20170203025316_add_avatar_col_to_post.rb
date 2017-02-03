class AddAvatarColToPost < ActiveRecord::Migration[5.0]
  def up
    add_attachment :posts , :avatar
  end

  def down
    remove_attachment :posts, :avatar
  end
end
