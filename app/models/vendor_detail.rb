class VendorDetail < ActiveRecord::Base
  attr_accessible :vendor_address, :vendor_comment, :vendor_email,
                  :vendor_id, :vendor_name, :vendor_telephone

  validates_presence_of :vendor_id, :vendor_name, :vendor_email, :vendor_address
  validates_format_of :vendor_email,
                      with: /\A([\w\.\-\+]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      message: 'Bad email address format'     

   set_primary_key :vendor_id
   has_many :project_details, dependent: :destroy

def self.like(query)
    if query.nil?
       []
    else 

lq = "%#{query}%"
       where('vendor_id LIKE ? ' +
             'OR vendor_name LIKE ? ' +
             'OR vendor_email LIKE ? ' +
	     'OR vendor_address LIKE ? ' +
             'OR vendor_telephone LIKE ? ',
             lq, lq, lq, lq, lq)

      end

  end   
=begin  in case humanize
  def project_id=(value)
    write_attribute :project_id, (value ? value.humanize : nil)
  end

  def project_name=(value)
    write_attribute :project_name, (value ? value.humanize : nil)
  end
=end
    self.per_page = 8
end
