# This way is a little bit confusing in Ruby world
if !tweets.empty?
  puts "Timeline"
  puts tweets
end  

# We can use unless instead if not
unless tweets.empty
  puts "Timeline"
  puts tweets
end  

# unless with else is confusing
unless tweets.sempty
  puts "Timeline"
  puts tweets
else
  puts "No tweets found"  
end  

# we can use if with else to be more expressive
if tweets.empty?
  puts "No tweets found"
else  
  puts "Timeline"
  puts tweets    