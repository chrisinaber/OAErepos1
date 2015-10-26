class DeliveryDetail < ActiveRecord::Base
  attr_accessible :delivery_no, :division_id, :emptype_amount, :emptype_id

   #set_primary_key :delivery_no
   # belongs_to :project_detail, dependent: :destroy, foreign_key: :project_id, primary_key: :project_id
   # belongs_to :vendor_detail, dependent: :destroy

def self.like(query)
    if query.nil?
       []
    else 

lq = "%#{query}%"
       where('delivery_no LIKE ? ' +
             'OR emptype_id LIKE ? ' +
             'OR division_id LIKE ? ' ,
	     
            lq, lq, lq)

      end

end
  self.per_page = 8
end
