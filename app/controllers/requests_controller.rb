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

end
