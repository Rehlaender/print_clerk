# encoding : utf-8
OrdersController.class_eval do
  
  def invoice
    load_order
    @invoice = true
    @template = "invoice"
    render :layout => false
  end

  def receipt
    load_order
    render  :layout => false
  end

  def slip
    load_order
    @slip = true
    @template = "slip"
    render "invoice" ,  :layout => false
  end

  def reminder
    load_order
    @reminder = true
    @template = "reminder"
    render "invoice" ,  :layout => false
  end

end
