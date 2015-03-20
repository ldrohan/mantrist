Rails.application.routes.draw do
  devise_for :users
  resources :pins do
  	member do
  		put "like", to: "pins#upvote"
  	end	
  end
  get 'profile', to: 'pins#profile'
  root "pins#index"
end
