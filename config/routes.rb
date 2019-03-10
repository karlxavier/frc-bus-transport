Rails.application.routes.draw do

  root "fees#index"

  get 'uploads', :to => 'uploads#uploads', as: 'uploads'
  post 'uploads/master_import_2016'
  post 'uploads/master_import_2019'
  post 'uploads/master_import_feb'
  post 'uploads/opbal_2016'
  devise_for :users
  
  resources :fees
  resources :fee_details
  resources :students, only: [:index]

  resources :receipts

  get 'generate_receipt/:fee_id', :to => 'receipts#generate_receipt', as: 'generate_receipt'
  get 'generate_fees/:student_id', :to => 'receipts#generate_fees', as: 'generate_fees'

end
