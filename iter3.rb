#filter method
def filter(hash, value)
    hash.select {|k, v| v > value}
end

