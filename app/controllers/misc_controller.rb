class MiscController < ApplicationController
  def home; end

  def contact; end

  def thanks; end

  def about; end

  def form_submission
    if verify_recaptcha && params[:full_name].present? && params[:message].present?
      data = {
        full_name: params[:full_name],
        message:   params[:message],
        email:     params[:email],
        phone:     params[:phone]
      }

      MiscMailer.form_submission(data).deliver_now
      redirect_to thanks_path
    else
      redirect_to contact_path(errors: true)
    end
  end
end
