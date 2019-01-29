class BluebottleCoffee::Scraper

  def self.scraper_category
    doc = Nokogiri::HTML(open("https://bluebottlecoffee.com/store/coffee"))
    doc.css("#heap-product-card").each do |data|
      title = data.css("h2 a").first.text
      description = data.css("p.f6").first.text
      price = data.css(".pb10.f6 .dib").last.text
      BluebottleCoffee::Bluebottle.new(title, description, price)
    end

  end

end
