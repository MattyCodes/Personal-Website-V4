Rails.application.routes.draw do
  root to: "misc#home"

  get 'about'   => 'misc#about'
  get 'contact' => 'misc#contact'
  get 'thanks'  => 'misc#thanks'

  post 'form_submission' => 'misc#form_submission'
end
