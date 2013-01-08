class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def show
    @quote = get_quote
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(params[:order])
    @quote = get_quote
    if @order.save
      p @quote
      sandwich_order = SandwichMailer.order("make_sandwich@generalthings.com", @order, @quote).deliver
      redirect_to @order
    else
      render 'new'
    end
  end

  def get_quote
    quotes = [
      { author: "Mary Kay Ash", 
        text: "Sandwich every bit of criticism between two layers of praise." },
      { author: "Jack Black",
        text: "I make a mean peanut butter and jelly sandwich." },
      { author: "A. J. Jacobs",
        text: "There's a very passionate pro-chewing movement on the Internet 
          called Chewdiasm. They say that we should be chewing 50 to 100 times 
          per mouthful, which is insane. I tried that. It takes like a day and 
          a half to eat a sandwich. But their basic idea is right. If you chew, 
          you'll eat slower and you will get more nutrients." },
      { author: "Adam Osborne",
        text: "The small businessman is smart; he realizes there's no free lunch. 
        On the other hand, he knows where to go to get a good inexpensive sandwich." }]
    index = rand(quotes.length)
    quotes[index]
  end
end
