# app/mailers/custom_mailer.rb
class CustomMailer < ApplicationMailer
  def send_support_email(customer_email, customer_name)
    @customer_name = customer_name
    mail(to: customer_email, subject: 'Support Request with The Team') do |format|
      format.html { render 'support_email' }
    end
  end
end