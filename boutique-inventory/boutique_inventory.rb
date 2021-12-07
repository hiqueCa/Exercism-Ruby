class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    names = []
    @items.each do |item|
      names.append(item[:name])
    end

    names.sort
    #same as => names.sort { |a, b| a <=> b}
  end

  def cheap
    items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    items.select { |item| item[:quantity_by_size].length == 0 }
  end

  def stock_for_item(name)
    item_hash = items.find { |item| item[:name] == name}
    item_hash[:quantity_by_size]
  end

  def total_stock
    total = 0
    items.each do |item|
      item_quantities = item[:quantity_by_size]
      quantities = item_quantities.map { |_, quantity| quantity }
      total += quantities.reduce(0) { |sum, quantity| sum + quantity }
    end

    total
  end

  private
  attr_reader :items
end
