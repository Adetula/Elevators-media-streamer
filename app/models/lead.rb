class Lead < ApplicationRecord
    # SendGrid
    require 'sendgrid-ruby'
    include SendGrid
    
    validates_presence_of :full_name_of_contact
    validates_presence_of :company_name
    validates_presence_of :email
    validates_presence_of :phone
    validates_presence_of :project_name
    validates_presence_of :project_description
    validates_presence_of :department_in_charge_of_elevators
    validates_presence_of :message
    validates_presence_of :file_name
    validates_presence_of :customer_id

end
