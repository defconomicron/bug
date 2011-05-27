require "currency/active_record"
class CartProduct < ActiveRecord::Base
  attr_money :price
  
  belongs_to :cart
  
  # BEFORE:
  # cart = Cart.last || Cart.create
  # cart_product = cart.cart_products.first || CartProduct.create(:cart_id => cart.id)
  # cart.attributes = {:id => cart.id, :cart_products_attributes => { cart_product.id => {:id => cart_product.id, :cart_id => cart.id, :price => 10.money}}}
  # cart.save
  # cart.cart_products.first.price
  
  # AFTER:
  # cart = Cart.last || Cart.create
  # cart_product = cart.cart_products.first || CartProduct.create(:cart_id => cart.id)
  # cart.cart_products = [cart_product]
  # cart.attributes = {:id => cart.id, :cart_products_attributes => { cart_product.id => {:id => cart_product.id, :cart_id => cart.id, :price => 10.money}}}
  # cart.save
  # cart.cart_products.first.price
end
