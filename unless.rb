tweets = ["Ruby", "Java", "Scala"]

#Bad code with empty and !
if ! tweets.empty?
  puts "Timeline:"
  puts tweets
end

#Good code with unless
unless tweets.empty?
  puts "Timeline:"
  puts tweets
end

#Bad code with unless and else. Confusing  
unless tweets.empty?
  puts "Timeline:"
  puts tweets
else  
  puts "You dont have any tweets. You need to start now :)"
end

#Good code. Now we switched if with else
if tweets.empty?
  puts "You dont have any tweets. You need to start now :)"
else
  puts "Timeline:"
  puts tweets
end


#Bad code because nil is treated as false in Ruby
attachment = nil
if attachment != nil
  puts "Some value"
end
      
#Good code because we are using nil as a false      
attachment = "Something"
if attachment
  puts "Some value"
end        

#Terrible code because 0 is treated as true in Ruby when we work with Strings. Only nil is false
name = ""
unless name.length #will never be false
  puts "User name is required for the application"
end

#Bad code because we can use inline conditionals in Ruby
password = "123456789"
username = "Alexandre Gama"
if password.length < 8
  fail "Password too short"
end
unless username
  fail "Name is required"
end

#Good code because we are using inline conditionals
fail "Password too short" if password.length < 8
fail "Name is required" unless username

#Bad code because we arent using short-circuit wirh "and"
user = "Alexandre Gama"
if user
  if user.length < 28
    puts "Name too short"
  end
end

#Good code because we are using "and"
if user && user.length < 28
  puts "Name too short"
end

