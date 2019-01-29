class BluebottleCoffee::Scraper

  def self.scraper_category
    doc = Nokogiri::HTML(open("https://bluebottlecoffee.com/store/coffee"))
    doc.css("#heap-product-card").each do |data|
      title = data.css("h2 a").first.text
      description = data.css("p.f6").first.text
      #oz = data.css(".pb10.f6 .dib").first.text
      price = data.css(".pb10.f6 .dib").last.text
      url = "https://bluebottlecoffee.com" + data.css("h2 a").attr("href").text
      image = data.css(".lazy.media-object").attr("data-original").value
      test = BluebottleCoffee::Bluebottle.new(title, description, price, url, image)
    end

  end

end
