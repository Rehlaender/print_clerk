OrdersHelper.module_eval do
  def print_styles
    OfficeClerk.config(:print_styles).split
  end
  def print_path style
    eval("office.#{style}_order_path(@order)")
  end
end
