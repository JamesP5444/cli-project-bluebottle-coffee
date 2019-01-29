class BluebottleCoffee::Bluebottle
  attr_accessor :title, :description, :price, :url, :image
  @@all = []

  def initialize(title, description, price, url, image)
    @title = title
    @description = description
    #@oz = oz
    @price = price
    @url = url
    @image = image
    @@all << self
  end

  def self.all
    @@all
  end

end
