h = {"x": 1, "y":2}

h[:z] = 3
h[:x] = 5
h.delete(:y)
inver = h.invert


print "yeahh" if h.has_key?(:z)



print inver