class DonationController < ApplicationController
  
  before_filter :authenticate_donation!
  
  def index
    @donation = Donation.new
    # binding.pry
  end
  
  def donate
    @name = params[:donation][:name]
    @amount = params[:donation][:amount]
    @donate = Donation.new(params[:donation])
    
        
    #if @name.save and @amount.save
    if @donate.present?
      flash[:notice] = "Thank you"
    else
      redirect_to donation_url
      flash[:errors] = "Sorry, You have not donate !!"
    end       
  end
  
end
