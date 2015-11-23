require_relative './warehouse_picker_functions'

####  SECTION A - Single bay/item
### Given a bay, returns the item in that bay.
found_item = item_at_bay('b', 5)
puts "Item at b5 found is #{found_item}, expect it to be nail filer.\n\n"

### Given an item return the bay that it is in.
found_bay = location_of_bay('nail filer')
puts "The nail filer can be found at #{found_bay}, expect it to be b5.\n\n"


####  SECTION B - Multiple bays/items
### Given a list of bays, list the items in those bays.
found_items = item_at_bays('b5', 'b10', 'b6')
puts "The items at locations b5, b10 and b6 are #{found_items}, expecting them to be nail filer, cookie jar and toothpaste.\n\n"

### Given a list of items find the bays.
found_bays = location_of_bays('shoe lace', 'rusty nail', 'leg warmers')
puts "The items shoe lace, rusty nail and leg warmers are found at #{found_bays}, expecting them to be c1, c9 and c10.\n\n"


#### SECTION C - Advanced

### Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. For instance:

## given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart
found_items_distance = distance_of_items( 'b5', 'b10', 'b6' )
puts "The items at locations b5, b10 and b6 are #{found_items}, expecting them to be nail filer, cookie jar and toothpaste.  They are #{found_items_distance} bays apart.\n\n"

## given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart.)
found_items = item_at_bays_more( 'b3', 'c7', 'c9', 'a3' )
found_bays_distance = distance_of_bays( 'b3', 'c7', 'c9', 'a3' )
puts "The items at locations a3, c7, c9 and b3 are #{found_items}, expecting them to be blouse, paint brush, shoe lace and picture frame. They are #{found_bays_distance} bays apart.\n\n"

### Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit. For instance:

## given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"
found_bays = location_of_bays('shoe lace', 'rusty nail', 'leg warmers')
order = order_of_visit('rusty nail', 'shoe lace', 'leg warmers')
puts "The bays containing the shoe lace, rusty nail and leg warmers are #{found_bays}, expecting them to be c9, c1, and c10. These items should be collected in this order: #{order}"
puts "\n"

## given "hanger, deodorant, candy wrapper, rubber band", determine that those items need to be collected from "a10, a4, c8, and b9"
