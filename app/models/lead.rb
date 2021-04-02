class Lead < ApplicationRecord
    # SendGrid
    require 'sendgrid-ruby'
    include SendGrid
    
    validates_presence_of :full_name_of_contact
    validates_presence_of :company_name
    validates_presence_of :email
end
