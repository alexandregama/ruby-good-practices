# optional arguments unsing nil
def tweet(message, lat, long)
  # something
end

tweet("Ruby good practices", nil. nil) 

# we can use default values for our parameters 
def tweet(message, lat = nil, long = nil)
  #something
end

tweet("Ruby good practices") # nice! now we can call our method without all parameters 