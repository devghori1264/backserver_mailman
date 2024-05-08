# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
    def send_sample_email(customer_email)
      @customer_name = 'Customer Name' # the customer's name will be here
      @recipient_email = customer_email
  
      mail(to: @recipient_email, subject: 'Your Support Request with The Team') do |format|
        format.html { render 'sample_email' } # it renders the app/views/uer_mailer/sample_email.html.erb
      end
    end
  end