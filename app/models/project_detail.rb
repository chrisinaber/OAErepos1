class ProjectDetail < ActiveRecord::Base
  attr_accessible :budgettype_id, :contract_date, :contract_id,
                  :project_id, :project_name, :project_year, :vendor_id
  validates_presence_of :project_id, :project_name, :project_year
  validates_numericality_of :project_year,
                            greater_than_or_equal_to: 2543,
                            less_than_or_equal_to: Time.now.year.to_i+543
  set_primary_key :project_id
  belongs_to :vendor_detail, foreign_key: :vendor_id, primary_key: :vendor_id
  has_many :equipment_details, primary_key: :kurupan_no

def self.like(query)
    if query.nil?
       []
    else 

lq = "%#{query}%"
       where('project_id LIKE ? ' +
             'OR project_name LIKE ? ' +
             'OR project_year LIKE ? ' +
             'OR vender_id LIKE ? ' +
             'OR contract_id LIKE ?',
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

