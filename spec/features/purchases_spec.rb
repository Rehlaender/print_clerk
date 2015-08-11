require 'spec_helper'

describe "Purchases" do
  before do
    sign_in
  end
  it "should render print button", :js => true do
    purchase = create :purchase
    # visit_path purchase_path(purchase)
    visit "/purchases/#{purchase.id}"
    expect(page).to have_link("Print Invoice" , href: "/purchases/#{purchase.id}/invoice")
  end
  describe "purchase invoice" do
    it "shows total" do
      purchase = create :purchase
      visit_path "#{purchase_path(purchase)}/invoice"
      expect(page).to have_content I18n.t(:purchase_total)
    end
    it "uses best_euros to render price" do
      purchase = create :purchase
      # expect(purchase.basket.total_price).to receive(:euros)
      visit_path "#{purchase_path(purchase)}/invoice"
    end
  end
end
