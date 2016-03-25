class GildedRose
  class Item

    def self.register_item name
      item_types[name] = self
    end

    def self.calculator_for item
      (item_types[item.name] || self).new(item)
    end

    def initialize(item)
      @item = item
    end

    def update_quality
      set_sell_in
      set_quality
    end

    private

    def self.item_types
      @@item_types ||= {}
    end

    def set_sell_in
      item.sell_in += sell_in_increment
    end

    def set_quality
      item.quality += increment
      item.quality = min_quality if item.quality < min_quality
      item.quality = max_quality if item.quality > max_quality
    end

    def sell_in_increment
      -1
    end

    def item
      @item
    end

    def increment
      item.sell_in < 0 ? -2 : -1
    end

    def max_quality
      50
    end

    def min_quality
      0
    end
  end
end