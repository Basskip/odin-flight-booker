class PassengerMailer < ApplicationMailer
    default from: 'welcome@example.com'

    def welcome_email
        @user = params[:user]
        @url = 'http://example.com/login'
        mail(to: @user.email, subject: 'Thank you for booking!')
    end
end
