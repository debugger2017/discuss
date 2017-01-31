class GroupsController < ApplicationController
	def show
		
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
