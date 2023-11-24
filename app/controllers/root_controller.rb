# app/controllers/root_controller.rb
class RootController < ApplicationController
  def send_email
    customer_email = 'customer@example.com'
    customer_name = 'Customer Name'

    # this will send the support email using the CustomMailer class
    CustomMailer.send_support_email(customer_email, customer_name).deliver_now

    # this respond to the AJAX request
    render json: { success: true }, status: :ok
  end

  def send_email_test

    customer_email = 'customer@example.com'
    customer_name = 'Customer Name'

    CustomMailer.send_support_email(customer_email, customer_name).deliver_now

    render plain: 'Support email sent for testing.'
  end
end
