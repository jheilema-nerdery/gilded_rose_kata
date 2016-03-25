class GildedRose
  class AgedCheese < NormalItem

    private

    def increment
      item.sell_in < 0 ? 2 : 1;
    end

  end
end