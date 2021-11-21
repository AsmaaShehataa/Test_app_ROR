dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

def get_city_names (somehash)
    somehash.keys
end 

def get_area_code (somehash, answer)
    somehash[answer]
end 

loop do 
    puts "do you want to lookup an area code based on a city name? (Y/N)?"
    input = gets.chomp.downcase
    break if input != "y"
    puts "Which city do you want to look up the areacode for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
    answer = gets.chomp
    if dial_book.include?(answer)
        puts "the area code for #{answer} is #{get_area_code(dial_book, answer)}"
    else
        puts "invalid city"
    end
end


