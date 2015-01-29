class Item

  def self.all
    [
      Item.new(id: 1,  category: "Tent",         name: "1-person Tent",       price: 119.99 ),
      Item.new(id: 2,  category: "Tent",         name: "2-person Tent",       price: 169.99 ),
      Item.new(id: 3,  category: "Tent",         name: "3-person Tent",       price: 249.99 ),
      Item.new(id: 4,  category: "Tent",         name: "4-person Tent",       price: 319.99 ),
      Item.new(id: 5,  category: "Flashlight",   name: "Small Flashlight",    price:   6.99 ),
      Item.new(id: 6,  category: "Flashlight",   name: "Large Flashlight",    price:  12.99 ),
      Item.new(id: 7,  category: "Water Bottle", name: "Small Water Bottle",  price:   2.99 ),
      Item.new(id: 8,  category: "Water Bottle", name: "Large Water Bottle",  price:   2.99 ),
      Item.new(id: 9,  category: "Stove",        name: "Small Stove",         price:  29.99 ),
      Item.new(id: 10, category: "Stove",        name: "Large Stove",         price:  39.99 ),
      Item.new(id: 11, category: "Sleeping Bag", name: "Simple Sleeping Bag", price:  49.99 ),
      Item.new(id: 12, category: "Sleeping Bag", name: "Deluxe Sleeping Bag", price:  79.99 )
    ]
  end

  def self.find(id)
    self.all.find { |item| item.id == id.to_i }
  end

  attr_accessor :id, :category, :name, :price

  def initialize(args)
    @id       = args[:id]
    @category = args[:category]
    @name     = args[:name]
    @price    = args[:price]
  end

end