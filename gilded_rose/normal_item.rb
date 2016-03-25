class GildedRose
  class NormalItem
    def initialize(item)
      @item = item
    end

    def update_quality
      item.sell_in += sell_in_increment

      item.quality += increment
      item.quality = [min_quality, item.quality].max
      item.quality = [max_quality, item.quality].min
    end

    private

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