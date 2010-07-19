class Student < ActiveRecord::Base
    validates_presence_of  :name,:college_name,:college_id,:email_address,:contact_number 
    validates_format_of :email_address, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
    validates_format_of :contact_number , :with => /\A[0-9]+\Z/i , :on => :create
    validates_length_of :contact_number , :is => 10 
end
