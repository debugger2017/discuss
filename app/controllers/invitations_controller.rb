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

  def index
  end

  def respond
    msg = params[:commit]
    invitation = Invitation.find_by(id: params[:invite][:id])
    invitation.update_attributes(is_accepted: true)
    if msg == "Yes"
      puts 'sfdfs'
      membership = Membership.new(user_id: current_user.id , group_id: params[:invite][:group_id] , is_admin: false)
      membership.save
    end
  end
end
