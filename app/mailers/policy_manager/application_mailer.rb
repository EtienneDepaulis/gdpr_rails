module PolicyManager
  class ApplicationMailer < ActionMailer::Base
    default from: Config.from_email
    layout 'mailer'

    # configurable mailer helpers
    Config.exporter.mail_helpers.each do |helpers|
      add_template_helper(helpers)
    end
  end
end