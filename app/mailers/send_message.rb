class SendMessage < ActionMailer::Base
  default from: "from@example.com"

  def contact(name, email) 
  	@user = name
  	@email = email
  	mail(to: email, subject: "Thank You for #{@user} for mailing me")
  end
end
