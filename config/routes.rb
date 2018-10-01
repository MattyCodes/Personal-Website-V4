Rails.application.routes.draw do
  root to: "misc#home"
  get 'about' => 'misc#about'
end
