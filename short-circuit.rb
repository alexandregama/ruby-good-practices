# two conditions 
if user
  if user.signed_in?
    puts "Signed"
  end
end

# we can user short-circuit to be a little bit more readable
if user && user.signed_in?
  puts "Signed"
end

# default values with 'or'
tweets = timeline.tweets
tweets = [] unless tweets

tweets = timeline.tweets || []         