class PrintController < AdminController
  def lasku
    @template = params[:template] || "invoice"
    eval "@#{@template} = true"
    @order = Order.find(params[:id])
    render  @template , :layout => false
  end
end
