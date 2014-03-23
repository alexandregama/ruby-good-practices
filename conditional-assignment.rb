# assigns if there's no existing value
i_was_set = 1
i_was_set ||= 2

puts i_was_set # print 1

i_was_not_set ||= 2

puts i_was_not_set # print 2

# better example
options[:country] = 'us' if options[:country].nil?
options[:privacy] = true if options[:privacy].nil?
options[:geotag] = true if options[:geotag].nil?

# but here we can use conditional assignments 
options[:country] ||= 'us'
options[:privacy] ||= true
options[:geotag] ||= true