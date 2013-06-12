class FriendController < ApplicationController
  def friend_list
  	@user = User.new
  end

 
  def be_mine_friend
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to friend_mine_friend_url
  		flash[:notice] = "#{@user[:name]} have been added to my friend list"
  	else
  		redirect_to friend_friend_list_path
      flash[:errors] = "Please Fill all the feild"
  	end  	
  end

  def mine_friend
  	@title = "Details list of Mine Friend"
  	@friend = User.paginate(page: params[:page], per_page: 5).orders
  	respond_to do |format|
      format.html 
      format.json { render json: @friend }
      format.pdf { render :layout => false }
    end
  end
end
