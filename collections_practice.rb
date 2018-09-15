def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array << word
    end
  end
  new_array
end

def first_wa(array)
  array.find do |x|
    x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end
### OLDER, UGLIER METHOD ###
# def remove_non_strings(array)
#   new_array = []
#   array.each do |check|
#     if check.is_a? String
#       new_array << check
#     end
#   end
#   new_array
# end

def count_elements(array_of_hashes)
  array_of_hashes.each do |hashes|
    hashes[:count] = 0
    # this creates a new key-value in our hash, count: 0
    name = hashes[:name]
    # this creates a new variable 'name' and assigns it the name from each hash
    array_of_hashes.each do |hash|
    # repeats the loop of iteration through array_of_hashes
      if name == hash[:name]
      # tests our variable 'name' == the :name key
        hashes[:count] += 1
        #if so, adds +1 to our count key.
      end
    end
  end.uniq
  # This removes any duplicates
  # We can apply this to the end of our loop by adding it to 'end'
end

def merge_data(keys, data)
  merged = []
  keys.each do |i|
    data.first.map do |k,v|
      if i.values[0] == k then merged << i.merge(v)
      end
    end
  end
  merged
end

def find_cool(cool)
    cool.select {|key| key.any? {|key,value| value == "cool"}}
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|key,value| locations_hash[value[:location]] = []}
    locations_hash.each {|key,value| schools.each {|keys,vals| if key == vals[:location] then value << keys  end}}
end
