module Phcpress
	class News::Post < ActiveRecord::Base
		has_attached_file :pstimage, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
		validates_attachment_content_type :pstimage, content_type: /\Aimage\/.*\Z/
	end
end
