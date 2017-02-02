class PostsController < ApplicationController
  def new
  end

  def show
  end

  def index
  end

  def create
  	
  	group = Group.find_by(id: params[:post][:id].to_i)
  	redirect_to group_path(group)
  end

end
