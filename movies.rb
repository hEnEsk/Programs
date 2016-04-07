movies = {
    Avatar: 8,
    Slapshot: 7,
    Waterworld: 6,
    Shawshank_Redemption: 9
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice

when "add"
  puts "Please enter movie title!"
  title = gets.chomp.downcase.capitalize.gsub(" ", "_")
  
  if movies[title.to_sym]
   puts "The movie you have entered have already been added!"
  else
   puts "Enter rating for #{title}! (1-10)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
    puts "#{title} has been added with a rating of #{rating}."

when "update"
  puts "Enter the name of the movie you wish to update!"
  title = gets.chomp.downcase.capitalize
  if movies[title.to_sym].nil?
    puts "The movie you you wish to update can not be found!"  
  else
      puts "What is the new rating for movie?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been updated with new rating of #{rating}."
  end

when "display"
  movies.each do |title, rating|
    puts "#{title}: #{rating}"
  end
  
when "delete"
  puts "What movie would you like to remove?"
  title = gets.chomp.downcase.capitalize
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed!"
  end
else 
  puts "Sorry, I didn't understand your input!"
end
puts movies
