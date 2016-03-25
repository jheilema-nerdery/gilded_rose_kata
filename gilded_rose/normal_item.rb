class GildedRose
  class NormalItem
    def initialize(item)
      @item = item
    end

    def update_quality
      if item.name != 'Backstage passes to a TAFKAL80ETC concert'
        if item.quality > min_quality
          item.quality -= 1
        end
      else
        if item.quality < max_quality
          item.quality += 1

          if item.sell_in < 11
            if item.quality < max_quality
              item.quality += 1
            end
          end
          if item.sell_in < 6
            if item.quality < max_quality
              item.quality += 1
            end
          end
        end
      end
      item.sell_in -= 1
      if item.sell_in < 0
        if item.name != 'Backstage passes to a TAFKAL80ETC concert'
          if item.quality > min_quality
            item.quality -= 1
          end
        else
          item.quality = item.quality - item.quality
        end
      end
    end

    private

    def item
      @item
    end

    def max_quality
      50
    end

    def min_quality
      0
    end
  end
end