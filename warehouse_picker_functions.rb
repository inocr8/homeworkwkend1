WAREHOUSE = [
  {
    rack_row: "a",
    bay_number: 1, 
    rack_bay_position: "a1",
    product_name: "needle"
  },
  {
    rack_row: "a",
    bay_number: 2, 
    rack_bay_position: "a2",
    product_name: "stop sign"
  },
  {
    rack_row: "a",
    bay_number: 3, 
    rack_bay_position: "a3",
    product_name: "blouse"
  },
  {
    rack_row: "a",
    bay_number: 4, 
    rack_bay_position: "a4",
    product_name: "hanger"
  },
  {
    rack_row: "a",
    bay_number: 5, 
    rack_bay_position: "a5",
    product_name: "rubber duck"
  },
  {
    rack_row: "a",
    bay_number: 6, 
    rack_bay_position: "a6",
    product_name: "shovel"
  },
  {
    rack_row: "a",
    bay_number: 7, 
    rack_bay_position: "a7",
    product_name: "bookmark"
  },
  {
    rack_row: "a",
    bay_number: 8, 
    rack_bay_position: "a8",
    product_name: "hanger"
  },
  {
    rack_row: "a",
    bay_number: 9, 
    rack_bay_position: "a9",
    product_name: "glow stick"
  },
  {
    rack_row: "a",
    bay_number: 10, 
    rack_bay_position: "a10",
    product_name: "rubber band"
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
]

def item_at_bay(row, bay)
  location = WAREHOUSE.select{ |x| x[:rack_row] == row && x[:bay_number] == bay }
  return location[0][:product_name]
end


# def location_of_bay

# end














