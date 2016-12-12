class EpicenterController < ApplicationController
  
  
  
  def feed
    
    @following_mews = []
    
    Mew.all.each do |mew|
      if current_user.following.include?(mew.user_id)
        @following_mews.push(mew)
      end
    end
    
  end

  def show_user
    @user = User.find(params[:id])
  end

  def now_following
    @user = User.find(params[:id].to_i)
    
    current_user.following.push(params[:id].to_i)
    current_user.save
  end

  def unfollow
     @user = User.find(params[:id].to_i)
    
    current_user.following.delete(params[:id].to_i)
    current_user.save
  end
end

