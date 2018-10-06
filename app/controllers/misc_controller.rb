class MiscController < ApplicationController
  def home
  end

  def about
    test_text  = <<-HEREDOC
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
      et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
      aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
      dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
      qui officia deserunt mollit anim id est laborum.
    HEREDOC

    @list_data = [
      {
        title: "Yip Yip Inc.",
        primaryImage: ActionController::Base.helpers.image_path('yipyip_logo_large.png'),
        description: test_text
      },
      {
        title: "Dev Bootcamp",
        primaryImage: ActionController::Base.helpers.image_path('devbootcamp_logo.png'),
        description: test_text
      },
      {
        title: "Xplode Conference",
        primaryImage: ActionController::Base.helpers.image_path('xplode_logo.png'),
        description: test_text
      },
      {
        title: "NativeAmerica.Travel",
        primaryImage: ActionController::Base.helpers.image_path('native_america_logo.png'),
        description: test_text
      }
    ]
  end

  def contact
  end

  def form_submission
    byebug
  end
end
