class GildedRose
  class LegendaryItem < Item
    register_item 'Sulfuras, Hand of Ragnaros'

    private

    def increment
      0
    end

    def sell_in_increment
      0
    end

    def max_quality
      80
    end

    def min_quality
      80
    end
  end
end