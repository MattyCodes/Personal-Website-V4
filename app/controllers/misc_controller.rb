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
        primaryImage: ActionController::Base.helpers.image_path('macho_entrance.jpg'),
        secondaryImage: ActionController::Base.helpers.image_path('macho_comic.jpg'),
        description: test_text
      },
      {
        primaryImage: ActionController::Base.helpers.image_path('stark_wallpaper.png'),
        secondaryImage: ActionController::Base.helpers.image_path('stark_banner.jpg'),
        description: test_text
      },
      {
        primaryImage: ActionController::Base.helpers.image_path('wu_tang_wallpaper.jpg'),
        secondaryImage: ActionController::Base.helpers.image_path('wu_tang_logo.png'),
        description: test_text
      },
      {
        primaryImage: ActionController::Base.helpers.image_path('deadpool_wallpaper.jpg'),
        secondaryImage: ActionController::Base.helpers.image_path('deadpool.jpg'),
        description: test_text
      }
    ]
  end
end
