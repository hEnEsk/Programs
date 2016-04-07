#  Decides whether or not I can go to hockey tonight.
puts "How much money is in my vallet?"
my_vallet = gets.chomp.to_i
puts "Hockey tonight!" unless (my_vallet <= 70)
puts "Can't afford hockey tonight!" if (my_vallet <= 70)
