class NewsMailer < ActionMailer::Base
  default from: "ecomoperations@gmail.com"

  def welcome_email(news_user)
    @news_user = news_user
    @url  = 'http://www.abridgr.com'
    mail(to: @news_user.email, subject: 'Welcome to Abridgr')
  end
end
