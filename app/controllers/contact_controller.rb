class ContactController < ApplicationController
  def contact_me
  	@user = User.new
  	#binding pry
  end

  def send_msg
  	@name = params[:name]
  	@address = params[:address]
  	@email = params[:email]

  	if @name.present? && @email.present?
  		redirect_to contact_contact_me_url
  		flash[:notice] = "Thank You #{@name}, Your message has been received"
  		SendMessage.contact(@name, @email)
  	else
  		redirect_to contact_contact_me_url
  	end
  end
end
