class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :item

  validates :item_id, uniqueness: { scope: :customer_id }
 
  def subtotal
    item.with_tax_price * amount
  end
end
