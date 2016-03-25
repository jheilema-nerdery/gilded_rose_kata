class GildedRose
  class AgedCheese < Item
    register_item 'Aged Brie'

    private

    def increment
      item.sell_in < 0 ? 2 : 1
    end

  end
end