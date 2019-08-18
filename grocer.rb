  # # let(:items) do
  #   [
  #     {"AVOCADO" => {:price => 3.00, :clearance => true}},
  #     {"KALE" => {:price => 3.00, :clearance => false}},
  #     {"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
  #     {"ALMONDS" => {:price => 9.00, :clearance => false}},
  #     {"TEMPEH" => {:price => 3.00, :clearance => true}},
  #     {"CHEESE" => {:price => 6.50, :clearance => false}},
  #     {"BEER" => {:price => 13.00, :clearance => false}},
  #     {"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
  #     {"BEETS" => {:price => 2.50, :clearance => false}},
  #     {"SOY MILK" => {:price => 4.50, :clearance => true}}
  #   ]
  

def consolidate_cart(cart)
  new_cart = {} 
  cart.each do |items_array| 
    items_array.each do |item, attribute_hash| 
      new_cart[item] ||= attribute_hash 
      new_cart[item][:count] ? new_cart[item][:count] += 1 :   
      new_cart[item][:count] = 1 
  end 
end 
new_cart 
end

def apply_coupons(cart, coupons) 
  coupons.each do |coupon| 
    coupon.each do |attribute, value| 
      name = coupon[:item] 
      if cart[name] && cart[name][:count] >= coupon[:num] 
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost], 
          :clearance => cart[name][:clearance], :count => 1} 
        end 
      cart[name][:count] -= coupon[:num] 
    end 
  end 
end 
  cart 
end
end


# def apply_coupons(cart, coupons)
#   if :item[] 
# end

# def apply_clearance(cart)
#   if :item[:clearance, true] 
# end

# def checkout(cart, coupons)
#   # code here
# end
