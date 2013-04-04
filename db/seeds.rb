
categories = 
['appliances',
'antiques',
'barter',
'bikes',
'boats',
'books',
'business',
'computer',
'free',
'furniture',
'general',
'jewelry',
'materials',
'rvs',
'sporting',
'tickets',
'tools',
'wanted',
'arts and crafts',
'auto parts',
'baby and kids',
'beauty and health',
'cars and trucks',
'cell phones',
'clothes',
'collectibles',
'electronics',
'farm and garden',
'garage sale',
'household',
'motorcycles',
'musical instruments',
'photo and video',
'toys and games',
'video gaming']

categories.each do |x|
  this = Category.new(:name => x)
  this.save
end