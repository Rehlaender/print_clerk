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
  resources :products do
    member do
      get :barcode  #print the barcode and price on a 50x25 mm area
      get :barcode_button
    end
  end
end
