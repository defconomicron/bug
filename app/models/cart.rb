class Cart < ActiveRecord::Base
  has_many :cart_products, :dependent => :destroy
  
  accepts_nested_attributes_for :cart_products, :allow_destroy => true
  
  before_save :set_quantity
  
  def set_quantity
    puts "@@@@@@@@@@@@@@@@@@@@@@@ #{self.cart_products}"
    
    return true
  end
end
