require 'spec_helper'

describe "Orders" do
  before(:each) do
    sign_in
  end
  it "should render print buttons" , :js => true do
    order = create :order
    visit_path order_path order
    OfficeClerk.config(:print_styles).split.each do |style|
      expect(page).to have_link("" , href: "/orders/#{order.id}/#{style}")
    end
  end
  describe "invoice" do
    it "shows total" do
      order = create :order
      visit_path "#{order_path(order)}/invoice"
      expect(page).to have_content I18n.t(:order_total)
    end
    it "uses best_euros to render price" do
      order = create :order
      #TODO expect(???).to receive(:best_euros)
      visit_path "#{order_path(order)}/invoice"
    end
  end
end
