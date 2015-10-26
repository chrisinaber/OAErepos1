class EquipmentDetail < ActiveRecord::Base
  attr_accessible :eqmtype_id, :eqm_sn1, :eqm_sn2, :eqm_sn3, :eqm_sn4, :ict_price, :bidding_price,
 :delivery_no, :emp_brand, :emp_version, :kurupan_no, :mornitor_sn1, :mornitor_sn2, :mornitor_brand,
 :mornitor_version, :project_id, :quaintity_emp, :receipt_no, :record_date, :record_person, :remakes,
 :running_no, :spec_cpu, :spec_hd, :spec_ram, :status_detail, :user_name, :vendor_id

   set_primary_key :kurupan_no
   belongs_to :project_detail, dependent: :destroy, foreign_key: :project_id, primary_key: :project_id
   belongs_to :vendor_detail, dependent: :destroy

def self.like(query)
    if query.nil?
       []
    else 

lq = "%#{query}%"
       where('kurupan_no LIKE ? ' +
             'OR eqmtype_id LIKE ? ' +
             'OR project_id LIKE ? ' ,
	     
            lq, lq, lq)

      end

end
  self.per_page = 1
end
