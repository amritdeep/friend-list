require 'twilio-ruby'

class SendtextController < ApplicationController
  def index
  end

  def send_text_message
  	#number_to_send_to = params[:number_to_send_to]

  	twilio_sid = "ACd1d8e6e1862879f0910f4686611aa78e"
  	twilio_token = "1934f96a0e47f9918535f51a5db91f83"
  	twilio_phone_number = "5122702960"
  	@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
  	@twilio_client.account.sms.messages.create(
  		:from => "+1#{twilio_phone_number}",
  		:to => 'My-phone-number',
  		:body => "This is an message. It gets sent to "
  		)
  end
end
