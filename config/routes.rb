Rails.application.routes.draw do

	root 'home#index'

	devise_for :users
	devise_scope :user do
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: 'sign_in'
    end
  end

	namespace :super do
		get '', to: 'dashboard#index', as: '/'

		resources :staff_categories, :staff_departments

		resources :staffs do
			member do
				get :add_qualification
			  put :edit_qualification
			  post :create_qualification
			  delete :delete_qualification
				get :add_contact
			  put :edit_contact
			  post :create_contact
			  delete :delete_contact
			end
		end
	end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
