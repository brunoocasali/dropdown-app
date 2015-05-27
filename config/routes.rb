Rails.application.routes.draw do
  resources :installments
  resources :accounts
  # do
  #   # get :load_account, on: :collection
  # end

end
