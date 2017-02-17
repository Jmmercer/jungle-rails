class Notifier < ApplicationMailer
    default from: 'no-reply@example.com',
            return_path: 'system@example.com'

    def order_email(order)
        @order = order
        mail(to: @order.email, subject: "Order Confirmation: Order #{@order.id}")
    end
end
