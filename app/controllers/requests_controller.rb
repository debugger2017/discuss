class RequestsController < ApplicationController
  def new
  end

  def search
  	name = (params[:request][:name]).downcase
  	result = Group.select(:id).where("lower(name) like ?" , "%#{name}%")
 	flash[:request] = result
  	redirect_to new_request_path
  end

  def create
    request = Request.new(sender_id: current_user.id , group_id: params[:request][:id].to_i)
    request.save
  end

  def index
  end

  def grant
    msg = params[:commit]
    request = Request.find_by(id: params[:request][:id])
    if msg == "Yes"
      request.update_attributes(is_granted: true)
      membership = Membership.new(user_id: params[:request][:sender_id] , group_id: params[:request][:group_id] , is_admin: false)
      membership.save
    else
      request.update_attributes(is_granted: false)
    end
  end
end
