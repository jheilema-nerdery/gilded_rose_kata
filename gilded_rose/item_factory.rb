require 'gilded_rose/normal_item'
require 'gilded_rose/legendary_item'

class GildedRose
  class ItemFactory
    def self.fetch(item)
      case item.name
      when 'Sulfuras, Hand of Ragnaros'
        GildedRose::LegendaryItem.new(item)
      else
        GildedRose::NormalItem.new(item)
      end
    end
  end
end