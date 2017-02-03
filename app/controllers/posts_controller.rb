class PostsController < ApplicationController
  def new
  end

  def show
    
  end

  def index
  end

  def create
    tmp = params[:post][:avatar]
    puts tmp
  	user = current_user.id
  	group = params[:post][:id].to_i
  	membership = Membership.select(:id).where(user_id: user, group_id: group).first
  	post_content = params[:post][:content]
  	new_post = Post.new(content: post_content, membership_id: membership['id'],avatar_file_name:tmp.original_filename)
  	new_post.save
  	group_object = Group.find_by(id: group)
  	redirect_to group_path(group_object)
  end

end
