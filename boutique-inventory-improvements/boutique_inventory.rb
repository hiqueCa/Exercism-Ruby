require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items= []
    items.each do |item|
      ostruct_item = OpenStruct.new(item)
      @items << ostruct_item
    end
  end

  def items
    items_array = []
    @items.each { |item| items_array << item }
    items_array
  end

  def item_names
    names = []
    self.items.each do |item|
      names << item.name
    end
    
    names.sort
  end

  def total_stock
    sum = 0
    self.items.each do |item|
      item.quantity_by_size.each { |_, quantity| sum += quantity }
    end

    sum
  end
end
