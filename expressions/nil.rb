# nil in Ruby is treated like false when it comes to conditionals
if attachment.file_path != nil
  attachment.post
end  

# we don't need this comparison because nil is treated like false when it comes to conditionals
if attachment.file_path
  attachment.post
end

# only nil is false
unless name.length
  warn "User name is required"
end    