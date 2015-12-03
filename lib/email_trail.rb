require "email_trail/version"
require "email_trail/railtie" if defined?(Rails::Railtie)

module EmailTrail
  class Base

    def self.delivering_email(message)
      EmailTrailMessage.create(
        to: message.to.to_s,
        cc: message.cc.to_s,
        bcc: message.bcc.to_s,
        subject: message.subject.to_s
      )
    end
  end
end
