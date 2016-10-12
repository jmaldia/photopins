Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get "about" => "pages#about"
  get "my_pins" => "pages#my_pins"

  # get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
end
