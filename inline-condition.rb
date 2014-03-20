# normal if and unless
if password.length < 8
  fail "Password is too short"
end

unless username
  fail "Username is required"
end

# we can use inline condition. This code is a little bit more readable
fail "Password is too short" if password.length < 8

fail "Username is required" unless username    