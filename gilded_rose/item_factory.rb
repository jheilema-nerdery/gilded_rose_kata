require 'gilded_rose/normal_item'
require 'gilded_rose/legendary_item'
require 'gilded_rose/aged_cheese'
require 'gilded_rose/backstage_pass'
require 'gilded_rose/conjured_item'

class GildedRose
  class ItemFactory
    def self.fetch(item)
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
  end
end