class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.send_when_update.subject
  #
  def send_when_update(user)
    @user = user

    mail to: user.email,
         subject:"新しい投稿があります"

  end
end
