# many arguments
def tweet(message, lat = nil, long = nil, reply_id = nil)
  # something
end

# here we can understand because we have all parameters
tweet("Ruby good practices", 39.99, 87.34, 1234)   

# here is a litle bit difficult to understand
tweet("Ruby good practices", nil, nil, 12345)

# now working with has arguments
def tweet(message, options = {})
  status = Status.new
  status.lat = options[:lat]
  status.long = options[:long]
  status.body = options[:body]
  status.reply_id = options[:reply_id]
  status.post
end

# now using it. All combined into options arguments
tweet("Ruby good practices",
  :lat => 12.87,
  :long => 87.67,
  :body => "My tweet"
  :replay_id => 12345
)  

# using ruby 1.9 syntax
tweet("Ruby good practices",
  lat: 12.87,
  long: 87.67,
  body: "My tweet"
  replay_id: 12345  
)

# keys are optionals
tweet("Ruby good practices",
  replay_id: 12345
)

# complete options is optional
tweet("Ruby good practices")