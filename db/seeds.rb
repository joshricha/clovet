parsed = JSON.parse(File.read("the_iconic_data_feed.json"))

parsed.each do |item|

	
	new_item = Item.new
	new_item.merchant_id = item["MerchantId"]
	new_item.sku = item["SKU"]
	new_item.name = item["Name"]
	new_item.merchant_url = item["Url"]
	new_item.price = item["Price"]
	new_item.price_sale = item["PriceSale"]
	new_item.brand = item["Brand"]
	new_item.color = item["Colour"]
	new_item.gender = item["Gender"]
	new_item.keywords = item["Keywords"]
	# new_item.image_url50 = item[]


end
