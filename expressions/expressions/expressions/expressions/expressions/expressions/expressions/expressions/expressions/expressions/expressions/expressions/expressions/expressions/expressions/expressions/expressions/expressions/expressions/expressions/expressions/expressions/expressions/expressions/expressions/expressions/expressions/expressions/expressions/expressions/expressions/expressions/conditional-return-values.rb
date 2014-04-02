if lista_name
  options[:path] = "/#{user_name}/#{list_name}"
else
  options[:path] = "/#{user_name}"
end    

# we can write a better code using one options
options[:path] = if list_name
  "/#{user_name}/#{list_name}"
else
  "/#{user_name}"  
  
# methods more readable. Now as you know every ruby method returns a value
def list_url(user_name, list_name)
  if list_name
    url = "http://twitter.com/#{user_name}/#{list_name}"
  else  
    url = "http://twitter.com/#{user_name}"  
  end
  url
end    

# a litle bit more readable
def list_url(user_name, list_name)
  if list_name
    "http://twitter.com/#{user_name}/#{list_name}"
  else
    "http://twitter.com/#{user_name}"
  end
end      
  