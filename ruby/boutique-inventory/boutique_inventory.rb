class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map do |item|
      item[:name]
    end.sort
  end

  def cheap
    @items.select do |item|
      item[:price] < 30
    end
  end

  def out_of_stock
    @items.select do |item|
      item[:quantity_by_size].empty?
    end
  end

  def stock_for_item(name)
    @items.find do |item|
      item[:name] == name
    end[:quantity_by_size]
  end

  def total_stock
    @items.map do |item|
      item[:quantity_by_size].values.sum
    end.sum
  end

  private

  attr_reader :items
end
