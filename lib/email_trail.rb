require "email_trail/version"
require "email_trail/railtie" if defined?(Rails::Railtie)

module EmailTrail
  class Base

    def self.delivering_email(message)
      puts message.inspect
      to = message.to.to_s
      subject = message.subject.to_s
      message = message.body.to_s
      puts "LOLOLOLOLOLOL"
    end
  end
end
