require pry
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
  # end
   
# bands.reduce({}) do |memo, pair|
#   p memo # First block parameter
#   p pair # Second block parameter
#   memo # Return value for the block. It becomes the memo in the next go-round
def consolidate_cart(cart)
    hash = {}
    binding.pry
    :items.reduce({}) do |:price, :count|
end


def apply_coupons(cart, coupons)
  # 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
