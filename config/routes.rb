OfficeClerk::Application.routes.append do
  match 'print/:id(/:template)' => 'print#lasku' ,   :via  => [:get, :post]
end
