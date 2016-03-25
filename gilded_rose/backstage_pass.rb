class GildedRose
  class BackstagePass < Item
    register_item 'Backstage passes to a TAFKAL80ETC concert'

    private

    def increment
      return 3 if item.sell_in < 5
      return 2 if item.sell_in < 10
      1
    end

    def max_quality
      item.sell_in < 0 ? 0 : 50
    end

  end
end