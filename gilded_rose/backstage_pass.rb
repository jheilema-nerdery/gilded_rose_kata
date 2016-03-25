class GildedRose
  class BackstagePass < NormalItem

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