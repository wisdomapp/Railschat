# Preview all emails at http://localhost:3000/rails/mailers/test_mailer
class TestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/test_mailer/send_when_update
  def send_when_update
    TestMailer.send_when_update
  end

end
