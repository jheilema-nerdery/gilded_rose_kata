require 'gilded_rose/normal_item'

class GildedRose
  class ItemFactory
    def self.fetch(item)
      GildedRose::NormalItem.new(item)
    end
  end
end