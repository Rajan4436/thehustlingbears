Rails.application.routes.draw do
  get "/users/sign_up", to: redirect('/')
  post "/users/sign_up", to: redirect('/')
  root "home#index"
 
  resources :plans
  resources :subscribers
  resources :posts
  devise_for :users

	controller :home do
  	get '/letter/:id', action: :letter, path: "strategy"
		get :profile
	end
end
