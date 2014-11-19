OfficeClerk::Engine.routes.append do
  resources :orders do
    member do
      get :button_list
      get :invoice
      get :receipt
      get :slip
      get :reminder
    end
  end
end
