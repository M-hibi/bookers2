class UsersController < ApplicationController
  
  def index
    @user = User.find(params[:id])
    @post_images = @user.post_images    
  end
  
end
