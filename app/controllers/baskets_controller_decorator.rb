# encoding : utf-8
BasketsController.class_eval do
  def button_list
    load_basket
    render :layout => false
  end
end