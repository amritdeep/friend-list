class DonationController < ApplicationController
  
  before_filter :authenticate_donation!

  
  def index
    @donation = Donation.new
  end
  
  def donate
    @name = params[:donation][:name]
    @amount = params[:donation][:amount]
    @donate = Donation.new(params[:donation])

    respond_to do |format|
      if @name.empty? || @amount.empty?
        redirect_to donation_url
        flash[:errors] = "Sorry, You have not donate !!"

        format.html
        format.js

      else
        flash[:notice] = "Thank You"

        format.html
        format.js
      end
    end

  end

end
