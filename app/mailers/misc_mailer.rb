class MiscMailer < ApplicationMailer
  default from: ENV['FROM_ADDRESS']

  def form_submission(data)
    @data = data
    mail(to: ENV['CONTACT_EMAIL'], from: ENV['FROM_ADDRESS'], subject: "Form Submission on MattyCodes.com")
  end
end
