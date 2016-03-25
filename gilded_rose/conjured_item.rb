class GildedRose
  class ConjuredItem < Item
    register_item 'Conjured Mana Cake'

    private

    def increment
      item.sell_in < 0 ? -4 : -2
    end

  end
end