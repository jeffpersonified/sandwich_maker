require 'spec_helper'

describe "Order pages" do
  subject { page }

  describe "new order page" do
    before { visit new_order_path }
    let(:submit) { "Send Order"}
    # it { should have_selector('h1', text: "New Sandwich Order") }

    context "with invalid information" do
      it "should not create an order" do
        expect { click_button submit }.not_to change(Order, :count)
      end
    end

    context "with valid information" do
      before do
        fill_in "Name for order?", with: "Example Order"
        fill_in "Special Instructions?", with: "Heavy on the cowbell"
      end

      it "should create a new order" do
        expect { click_button submit }.to change(Order, :count).by(1)
      end
    end
  end
end
