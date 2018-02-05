class ApplicationMailer < ActionMailer::Base
  default from: 'RailsChat<sora5773@gmail.com>',
          bcc:  "",
          reply_to:"sample+reply@gmail.com"
  layout 'mailer'
end
