class ApplicationMailer < ActionMailer::Base
  default from: 'RailsChat<mailaddress>',
          bcc:  "",
          reply_to:"sample+reply@gmail.com"
  layout 'mailer'
end
