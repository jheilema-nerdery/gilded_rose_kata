class GildedRose
  class ConjuredItem < NormalItem

    private

    def increment
      item.sell_in < 0 ? -4 : -2
    end

  end
end