Rails.application.routes.draw do
  get 'profiles/show'

  devise_for :users, :controllers => { registrations: 'registrations' }  
	resources :posts do  
  	  resources :comments
	end  
	root 'posts#index'
	get ':user_name', to: 'profiles#show', as: :profile
	get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
	patch ':user_name/edit', to: 'profiles#update', as: :update_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
