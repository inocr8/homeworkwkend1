require_relative './warehouse_picker_functions'

####  SECTION A - Single bay/item
### Given a bay, returns the item in that bay.
found_item = item_at_bay('b', 5)
puts "Item at b5 found is #{found_item}, expect it to be nail filer.\n\n"

### Given an item return the bay that it is in.
found_bay = location_of_bay('nail filer')
puts "The nail filer can be found at #{found_bay}, expect it to be b5.\n\n"


####  SECTION B - Multiple bays/items
### Given a list of bays, list the items in those bays


### Given a list of items find the bays.



#### SECTION C - Advanced

### Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. For instance:

## given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart

## given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart.)

### Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit. For instance:

## given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"

## given "hanger, deodorant, candy wrapper, rubber band", determine that those items need to be collected from "a10, a4, c8, and b9"
