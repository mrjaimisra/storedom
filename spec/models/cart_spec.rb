require 'rails_helper'

describe Cart do
  it 'exists' do
    expect(Cart).to be
  end

  context "#items" do
    it 'returns and array of CartItems' do
      # {1 => 4, 6 => 5, 100 => 1}
      item = Item.create(name: "Item 1")
      data = Hash.new(0)
      data[item.id] = 2
      cart = Cart.new(data)
      expect(cart.items.first).to be_a_kind_of(CartItem)
    end
  end
end