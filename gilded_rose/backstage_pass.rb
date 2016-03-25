class GildedRose
  class BackstagePass < NormalItem

    def update_quality
      item.quality += increment
      item.quality = [item.quality, max_quality].min

      item.sell_in -= 1

      if item.sell_in < 0
        item.quality = min_quality
      end
    end

    private

    def increment
      return 3 if item.sell_in < 6
      return 2 if item.sell_in < 11
      1
    end

  end
end