class UserMailer < ApplicationMailer

    default from: 'saloriya1997@gmail.com'

  def welcome_email(user)
    @user = user
    @site_name = "http://cd-online.herokuapp.com"
    @url  = 'http://cd-online.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Status updation App')
  end

  def registration_notification(enroll)
    @student = enroll.student
    @course = enroll.course
    @enroll = enroll
    mail(to: @student.email, subject: 'Successfully Enrolled')
  end

end
