require 'pry-byebug'

WAREHOUSE = [
  {
    rack_row: "a",
    bay_number: 10, 
    rack_bay_position: "a10",
    product_name: "rubber band"
  },
  {
    rack_row: "a",
    bay_number: 9, 
    rack_bay_position: "a9",
    product_name: "glow stick"
  },
  {
    rack_row: "a",
    bay_number: 8, 
    rack_bay_position: "a8",
    product_name: "hanger"
  },
  {
    rack_row: "a",
    bay_number: 7, 
    rack_bay_position: "a7",
    product_name: "bookmark"
  },
  {
    rack_row: "a",
    bay_number: 6, 
    rack_bay_position: "a6",
    product_name: "shovel"
  },
  {
    rack_row: "a",
    bay_number: 5, 
    rack_bay_position: "a5",
    product_name: "rubber duck"
  },
  {
    rack_row: "a",
    bay_number: 4, 
    rack_bay_position: "a4",
    product_name: "hanger"
  },
  {
    rack_row: "a",
    bay_number: 3, 
    rack_bay_position: "a3",
    product_name: "blouse"
  },
  {
    rack_row: "a",
    bay_number: 2, 
    rack_bay_position: "a2",
    product_name: "stop sign"
  },
  {
    rack_row: "a",
    bay_number: 1, 
    rack_bay_position: "a1",
    product_name: "needle"
  },
  {
    rack_row: "c",
    bay_number: 1, 
    rack_bay_position: "c1",
    product_name: "rusty nail"
  },
  {
    rack_row: "c",
    bay_number: 2, 
    rack_bay_position: "c2",
    product_name: "drill press"
  },
  {
    rack_row: "c",
    bay_number: 3, 
    rack_bay_position: "c3",
    product_name: "chalk"
  },
  {
    rack_row: "c",
    bay_number: 4, 
    rack_bay_position: "c4",
    product_name: "word search"
  },
  {
    rack_row: "c",
    bay_number: 5, 
    rack_bay_position: "c5",
    product_name: "thermometer"
  },
  {
    rack_row: "c",
    bay_number: 6, 
    rack_bay_position: "c6",
    product_name: "face wash"
  },
  {
    rack_row: "c",
    bay_number: 7, 
    rack_bay_position: "c7",
    product_name: "paint brush"
  },
  {
    rack_row: "c",
    bay_number: 8, 
    rack_bay_position: "c8",
    product_name: "candy wrapper"
  },
  {
    rack_row: "c",
    bay_number: 9, 
    rack_bay_position: "c9",
    product_name: "shoe lace"
  },
  {
    rack_row: "c",
    bay_number: 10, 
    rack_bay_position: "c10",
    product_name: "leg warmers"
  },
  {
    rack_row: "b",
    bay_number: 1, 
    rack_bay_position: "b1",
    product_name: "tyre swing"
  },
  {
    rack_row: "b",
    bay_number: 2, 
    rack_bay_position: "b2",
    product_name: "sharpie"
  },
  {
    rack_row: "b",
    bay_number: 3, 
    rack_bay_position: "b3",
    product_name: "picture frame"
  },
  {
    rack_row: "b",
    bay_number: 4, 
    rack_bay_position: "b4",
    product_name: "photo album"
  },
  {
    rack_row: "b",
    bay_number: 5, 
    rack_bay_position: "b5",
    product_name: "nail filer"
  },
  {
    rack_row: "b",
    bay_number: 6, 
    rack_bay_position: "b6",
    product_name: "tooth paste"
  },
  {
    rack_row: "b",
    bay_number: 7, 
    rack_bay_position: "b7",
    product_name: "bath fizzers"
  },
  {
    rack_row: "b",
    bay_number: 8, 
    rack_bay_position: "b8",
    product_name: "tissue box"
  },
  {
    rack_row: "b",
    bay_number: 9, 
    rack_bay_position: "b9",
    product_name: "deodorant"
  },
  {
    rack_row: "b",
    bay_number: 10, 
    rack_bay_position: "b10",
    product_name: "cookie jar"
  },
]

####  SECTION A - Single bay/item
### Given a bay, returns the item in that bay.
def item_at_bay(row, bay)
  product = WAREHOUSE.select{ |item| item[:rack_row] == row && item[:bay_number] == bay }
  return product[0][:product_name]
end

### Given an item return the bay that it is in.
def location_of_bay(bay)
  location = WAREHOUSE.select{ |item| item[:product_name] == bay }
  return location[0][:rack_bay_position]
end

####  SECTION B - Multiple bays/items
### Given a list of bays, list the items in those bays.
def item_at_bays(loc1, loc2, loc3)
  product_bays = WAREHOUSE.select{ |bays| bays[:rack_bay_position] == loc1 || bays[:rack_bay_position] == loc2 ||  bays[:rack_bay_position] == loc3 }
  product_bays.map{ |bays| bays[:product_name] }.join(", ")
end 

### Given a list of items find the bays.
def location_of_bays(item1, item2, item3)
  location_bays = WAREHOUSE.select{ |bays| bays[:product_name] == item1 || bays[:product_name] == item2 ||  bays[:product_name] == item3 }
  location_bays.map{ |bays| bays[:rack_bay_position] }.join(", ")
end


#### SECTION C - Advanced

### Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. For instance:

## given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart
def distance_of_items(loc1, loc2, loc3)
  items = [loc1, loc2, loc3]
  low, high = items.map { |item| find_location_bays(item) }.minmax
  high - low
end

def find_location_bays(bay)
  WAREHOUSE.index { |position| position[:rack_bay_position] == bay }
end

## given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart.)
def distance_of_bays(loc1, loc2, loc3, loc4)
  items = [loc1, loc2, loc3, loc4]
  low, high = items.map { |item| find_location_bays(item) }.minmax
  high - low
end

## given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart.)
def item_at_bays_more(loc1, loc2, loc3, loc4)
  product_bays_more = WAREHOUSE.select{ |bays| bays[:rack_bay_position] == loc1 || bays[:rack_bay_position] == loc2 ||  bays[:rack_bay_position] == loc3 || bays[:rack_bay_position] == loc4 }
  product_bays_more.map{ |bays| bays[:product_name] }.join(", ")
end 

### Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit. For instance:

## given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"
def order_of_visit(item1, item2, item3)
  
end












