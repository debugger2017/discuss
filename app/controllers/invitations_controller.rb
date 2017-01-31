class InvitationsController < ApplicationController
  def new
  	@invitation = Invitation.new
  end

  def show
  end

  def search
  	name = (params[:invite][:name]).downcase
  	result = User.select(:id).where("lower(name) like ?" , "%#{name}%")
 	flash[:invite] = result
  	redirect_to new_invitation_path
  end

  def create
  	user = User.find_by(id: params[:invite][:id])
  end

end
