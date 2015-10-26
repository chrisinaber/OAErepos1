class Receipt < ActiveRecord::Base
  attr_accessible :receipt_date, :receipt_no, :receipt_receiver, :receipt_sendor
end
