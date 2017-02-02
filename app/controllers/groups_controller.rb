class GroupsController < ApplicationController
	
	def index
		@group_membership_all = Membership.joins(:group).select(:group_id,:name).where(user_id: current_user.id) 
	end

	def show
		@group = Group.find(params[:id])
	end

	def new
		@user = current_user
		@group = Group.new
	end

	def create
		@user = current_user
		@group = Group.new(group_params)
  		if @group.save
      	  flash[:success] = "Created group named #{@group.name}!!"
      	  membership = Membership.new(user_id: @user.id,group_id: @group.id, is_admin: true)
      	  membership.save
      	  session[:group_id] = @group.id
      	  redirect_to new_invitation_path
  		else
  		  render 'new'
  	    end
	end

	private 

	def group_params
		params.require(:group).permit(:name)
	end
end
