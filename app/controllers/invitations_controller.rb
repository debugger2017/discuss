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
    #debugger
  	user = User.find_by(id: params[:invite][:id])
    print current_user.id
    print "****"
    print user.id
    print "****"
    print session[:group_id]
    
    invitation = Invitation.new(sender_id: current_user.id , receiver_id: user.id , group_id: session[:group_id])
    invitation.save
  end

end
