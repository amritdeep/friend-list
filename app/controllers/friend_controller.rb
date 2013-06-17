class FriendController < ApplicationController

  layout "search", only: [:search, :show_details]
  before_filter :authenticate_donation!

  respond_to :html, :json

  def friend_list
  	@user = User.new
  end 

  def show_details
    @user = User.find(params[:id])

    respond_with @user

    # respond_to do |format|
    #   format.html
    #   format.json { render json: {user: @user.to_json}}
    # end
  end

  def be_mine_friend
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to friend_url
  		flash[:notice] = "#{@user[:name]} have been added to my friend list"
  	else
  		redirect_to new_friend_url
      flash[:errors] = "Please Fill all the feild"
  	end  	
  end

  def mine_friend
  	@title = "Details list of Mine Friend"
  	@friend = User.paginate(page: params[:page], per_page: 10).orders
  	respond_to do |format|
      format.html 
      format.json { render json: @friend }
      format.pdf { render :layout => false }
    end
  end

  def search
    @search = User.search(params[:user][:name])

    @search.each do |s|
      if s.name.present?
        flash[:notice] = "#{s.name} have been found"
      end
    end

    unless @search.present?
      redirect_to friend_url
      flash[:errors] = "Sorry Data not found"
    end

    respond_with @search
    
  end

end
