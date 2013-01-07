require 'spec_helper'

describe "Order pages" do
  subject { page }

  describe "new order page" do
    before { visit orders_new_path }

    it { should have_selector('h1', text: "New Sandwich Order") }
  end
end
