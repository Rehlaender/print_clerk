OfficeClerk::Application.routes.append do
  match 'print/:id(/:template)' => 'print#lasku' , 
                      :as => "print",  :via  => [:get, :post]
end
