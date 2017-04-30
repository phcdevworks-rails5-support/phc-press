module Phcpress
  class Articles::Post < ApplicationRecord

    # For Image Uploads
    mount_uploader :pstimage, Phcpress::PstimageUploader

    # Relationships
    has_many :connections, class_name: 'Phcpress::Modules::Connection', dependent: :destroy
    has_many :categories, class_name: 'Phcpress::Modules::Category', :through => :connections

    # Validation for Form Fields
    validates :psttitle,
      presence: true,
      length: { minimum: 3 }

    validates :psttext,
      presence: true,
      length: { minimum: 3 }

    validates :pststatus,
      presence: true

  end
end
