OfficeClerk::Application.routes.append do
  resources :orders do
    member do
      get :invoice
      get :receipt
      get :slip
    end
  end
  
  match 'print/:id(/:template)' => 'print#lasku' ,   :via  => [:get, :post]
end
