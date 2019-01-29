class BluebottleCoffee::CLI

  def call
    puts "Welcome to my CLI Project for Bluebottle Coffee!!!"
    list
  end

  def list
    BluebottleCoffee::Scraper.scraper_category

    puts "Please type list to see the Coffee Collection or type exit: "
    input = gets.strip.downcase
    if input == "list"
      BluebottleCoffee::Bluebottle.all.each.with_index(1) do |list, index|
        puts "#{index}.#{list.title}"
      end
      display_discription
    elsif input == "exit"
      goodbye
    else
      puts "Invalid"
      list
    end
  end

  def display_discription
    puts "Please type the number you are interested in!!"
    input = gets.strip.to_i
    if input <= BluebottleCoffee::Bluebottle.all.size && input > 0
      index = input-1
      puts "You selected #{input}.#{BluebottleCoffee::Bluebottle.all[index].title}"
      puts "#{BluebottleCoffee::Bluebottle.all[index].description}"
      puts "#{BluebottleCoffee::Bluebottle.all[index].price}"
      display_again
    elsif input <= 0 || input > BluebottleCoffee::Bluebottle.all.size
      puts "Invalid number"
      display_discription
    else
      goodbye
    end
  end

  def display_again
    puts "Would you like to see another coffee? [y/n]"
    answer = gets.strip.downcase
    if answer == "yes" || answer == "y"
      puts "OK!!!"
      display_discription
    elsif answer == "no" || answer == "n"
      goodbye
    else
      puts "Invalid. Please type again."
      display_again
    end
  end

  def goodbye
    puts "Thanks for visiting my progect!!!"
  end
  
end
