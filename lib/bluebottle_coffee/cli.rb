class BluebottleCoffee::CLI

  def call
    puts "Welcome to my CLI Project for Bluebottle Coffee!!!"
    BluebottleCoffee::Scraper.scraper_category
  end

  def list
    puts "Please type list to see the Coffee Collection or type exit!!"
  end

  def goodbye

  end



end
