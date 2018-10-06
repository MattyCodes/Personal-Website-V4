class MiscController < ApplicationController
  def home
  end

  def contact
  end

  def thanks
  end

  def about
    yipyip_text    = <<-LONGSTRING
      Working for Yip Yip has been the best learning experience I could've asked for. I particularly enjoyed being able to
      work on so many different parts of the platform using different technologies. Working for Yip Yip I helped
      build the front and back end of the web application ( Ruby on Rails & React ), the REST API ( Ruby on Rails )
      and the mobile app ( React-Native & Java ).
    LONGSTRING

    dbc_text       = <<-LONGSTRING
      Attending Dev Bootcamp was one of the most intense and difficult things I've ever done, but it was also one of
      the most rewarding. I was taught foundational computer science concepts along with real, practical programming skills.
      I lived in Austin, Texas for the duration of the course; while I was there I learned full-stack web development and
      object-oriented programming using Ruby on Rails and JavaScript.
    LONGSTRING

    xplode_text    = <<-LONGSTRING
      I've worn many hats working for Xplode - I've been everything from a roadie and a customer service rep to a
      developer and content manager using Ruby on Rails, JavaScript and WordPress. Working for Xplode has certainly
      given me a wider variety of skills; my role there required versatility, but that made it more interesting!
    LONGSTRING

    na_travel_text = <<-LONGSTRING
      The American Indian Alaska Native Tourism Association ( AIANTA ) is a non profit organization that is focused on
      expanding tribal tourism in the US. This has been a fun project to help work on, and the content of the site is
      always interesting; I've helped add features and optimize existing ones using Ruby on Rails and JavaScript.
    LONGSTRING

    @list_data     = [
      {
        title: "Yip Yip Inc.",
        primaryImage: ActionController::Base.helpers.image_path('yipyip_logo_large.png'),
        description: yipyip_text
      },
      {
        title: "Dev Bootcamp",
        primaryImage: ActionController::Base.helpers.image_path('devbootcamp_logo.png'),
        description: dbc_text
      },
      {
        title: "Xplode Conference",
        primaryImage: ActionController::Base.helpers.image_path('xplode_logo.png'),
        description: xplode_text
      },
      {
        title: "NativeAmerica.Travel",
        primaryImage: ActionController::Base.helpers.image_path('native_america_logo.png'),
        description: na_travel_text
      }
    ]
  end

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
