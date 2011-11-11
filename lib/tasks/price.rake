namespace :pricing  do
  desc "making price for line_items"
  task LineItem.all.each do |li|
    li.price = li.product.price
 end
end