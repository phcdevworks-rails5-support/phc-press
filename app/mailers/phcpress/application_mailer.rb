module Phcpress
	class ApplicationMailer < ActionMailer::Base
		default from: 'no-reply@phcnetworks.net'
		layout 'mailer'
	end
end
