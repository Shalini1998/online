class UserMailer < ApplicationMailer

    default from: 'saloriya1997@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://cd-online.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Status updation App')
  end

end
