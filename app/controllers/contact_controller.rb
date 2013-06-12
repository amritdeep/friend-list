class ContactController < ApplicationController
  def contact_me
  	@user = User.new
  	#binding pry
  end

  def send_msg
  	@name = params[:name]
  	@address = params[:address]
  	@email = params[:email]
    @message = params[:message]

  	if @name.present? && @email.present?
  		redirect_to contact_contact_me_url
  		flash[:notice] = "Thank You #{@name}, Your message has been received"
  		SendMessage.contact(@name, @email)

      # twilio send msg over her
      twilio_sid = "ACd1d8e6e1862879f0910f4686611aa78e"
      twilio_token = "1934f96a0e47f9918535f51a5db91f83"
      twilio_phone_number = "5122702960" 
      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
      @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => '+9779808266447',
      :body => "This is an message. It gets sent to #{@message}"
      )

  	else
  		redirect_to contact_contact_me_url
  	end
  end
end
