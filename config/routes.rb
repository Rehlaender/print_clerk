OfficeClerk::Application.routes.append do
  resources :orders do
    member do
      get :invoice
      get :receipt
      get :slip
      get :reminder
    end
  end
end
