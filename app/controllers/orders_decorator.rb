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
    @slip = true
    render "invoice" ,  :layout => false
  end

  def reminder
    load_order
    @reminder = true
    render "invoice" ,  :layout => false
  end

end
