require 'spec_helper'

describe Order do
  before { @order = Order.new(name: "sample order", 
                              type: "meaty", 
                              options: "mayonaise, mustard",
                              instructions: "heavy on the cow bell") }
  subject { @order }

  it { should be_valid }
  it { should respond_to(:name) }
  it { should respond_to(:type) }

  describe "when a name for the order isn't given" do
    before { @order.name = "" }
    it { should_not be_valid }
  end

  describe "when a name is too long" do
    before { @order.name = "hello" * 46 }
    it { should_not be_valid }
  end

  describe "when a type of sandwich for the order isn't given" do
    before { @order.type = "" }
    it { should_not be_valid }
  end
end

  # create_table "orders", :force => true do |t|
  #   t.string   "name"
  #   t.string   "type"
  #   t.string   "options"
  #   t.text     "instructions"
  #   t.datetime "created_at",   :null => false
  #   t.datetime "updated_at",   :null => false
  # end
