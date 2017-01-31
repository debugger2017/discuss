class InvitationsController < ApplicationController
  def new
  end

  def show
  end

  def create
  	name = (params[:invite][:name]).downacase
  	result = User.select(:id).where("lower(name) like ?" , "#{name}")
 	session[:invite] = result
  	redirect_to new_invitation_path
  end

end
