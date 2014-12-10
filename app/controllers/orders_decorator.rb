# encoding : utf-8
OrdersController.class_eval do
  
  def button_list
    load_order
    render :layout => false
  end

  def invoice
    load_order
    @invoice = true
    @template = "invoice"
  end

  def receipt
    load_order
  end

  def slip
    load_order
    @slip = true
    @template = "slip"
  end

  def reminder
    load_order
    @reminder = true
    @template = "reminder"
  end

end
