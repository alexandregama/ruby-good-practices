# case statement value
client_url = case client_name
  when "web"
     "http://twitter.com"
  when "facebook"
     "http://facebook.com"
  else
    nil
end          

popularity = case tweeter.retweet
  when 0..9
    nil
  when 10..99
    "trending"  
  else
    "hot"
end      

# a litle bit more readable
popularity = case tweeter.retweet
  when 0..9 then nil
  when 10.99 then "trending"
  else "hot"    
end    
  