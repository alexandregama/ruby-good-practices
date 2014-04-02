def get_tweets(list)
  if list.authorized?(@user)
    list.tweets
  else
    [] # terrible! magic array returned
  end  
end      

tweets = get_tweets(my_list)
if tweets.empty?
  alert "No tweets were found" # can't be sure it's an error
end  

# now using exceptions
def get_tweets(list)
  unless list.authorized?(@user)
    raise AuthorizationException.new
  end
  list.tweets
end

tweets = get_tweets(my_list)
begin
  tweets = get_tweets(my_list)
rescue AuthorizationException
  warn "You are not authorized"
end  
  