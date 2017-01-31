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
      	  flash[:success] = "Created group!!"
      	  redirect_to @group
  		else
  		  render 'new'
  	    end
	end



	private 

	def group_params
		params.require(:group).permit(:name)
	end

end
