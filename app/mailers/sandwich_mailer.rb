class SandwichMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def order(email_recipient, order)
    @greeting = "Hi"
    @order_num = order.id
    @order_name = order.name
    @type = order.type
    @instructions = order.instructions
    mail to: email_recipient, 
         bcc: "jeff.matthew.smith@gmail.com",
         subject: "New Sandwich Order - ##{@order_num}"
  end
end
