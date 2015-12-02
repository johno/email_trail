require "email_trail/version"

module EmailTrail
  class Base

    def self.delivering_email(message)
      to = message.to.to_s
      subject = message.subject.to_s
      message = message.body.to_s
    end
  end
end

defined?(ActionMailer::Base) ?
  ActionMailer::Base.register_interceptor(EmailTrail::Base) :
  fail('email_trail requires ActionMailer::Base')
