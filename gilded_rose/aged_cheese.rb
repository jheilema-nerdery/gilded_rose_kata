class GildedRose
  class AgedCheese < NormalItem

    def update_quality
      item.sell_in -= 1

      item.quality += quality_increment
      item.quality = [max_quality, item.quality].min
    end

    private

    def quality_increment
      item.sell_in < 0 ? 2 : 1;
    end

  end
end