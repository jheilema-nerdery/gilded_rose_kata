require 'gilded_rose/normal_item'
require 'gilded_rose/legendary_item'
require 'gilded_rose/aged_cheese'
require 'gilded_rose/backstage_pass'
require 'gilded_rose/conjured_item'

def update_quality(items)
  items.each do |item|
    fetch(item).update_quality
  end
end

def fetch(item)
  case item.name
  when 'Sulfuras, Hand of Ragnaros'
    GildedRose::LegendaryItem.new(item)
  when 'Aged Brie'
    GildedRose::AgedCheese.new(item)
  when 'Backstage passes to a TAFKAL80ETC concert'
    GildedRose::BackstagePass.new(item)
  when 'Conjured Mana Cake'
    GildedRose::ConjuredItem.new(item)
  else
    GildedRose::NormalItem.new(item)
  end
end

# DO NOT CHANGE THINGS BELOW -----------------------------------------

Item = Struct.new(:name, :sell_in, :quality)

# We use the setup in the spec rather than the following for testing.
#
# Items = [
#   Item.new("+5 Dexterity Vest", 10, 20),
#   Item.new("Aged Brie", 2, 0),
#   Item.new("Elixir of the Mongoose", 5, 7),
#   Item.new("Sulfuras, Hand of Ragnaros", 0, 80),
#   Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20),
#   Item.new("Conjured Mana Cake", 3, 6),
# ]

