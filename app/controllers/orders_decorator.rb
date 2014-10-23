# encoding : utf-8
OrdersController.class_eval do
  
  def invoice
    load_order
    render :layout => false
  end

  def receipt
    load_order
    render  :layout => false
  end

  def slip
    load_order
    render  :layout => false
  end

end
