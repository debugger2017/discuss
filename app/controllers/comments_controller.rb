class CommentsController < ApplicationController
  def new
  end

  def show
  end

  def index
  end

  def create

  	comment = Comment.new(post_id: params[:comment][:p_id].to_i,content: params[:comment][:content],user_id: current_user.id)
  	comment.save
  	post_object = Post.find_by(id: params[:comment][:p_id].to_i)
  	redirect_to post_path(post_object)
  end
end
