def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure

  i = min
  sum = 0

  while i <= max
    sum += i
    i += 1
  end

  sum

end


puts sum_with_while(1, 100)

def sum_with_for(min,max)
  sum = 0
  for i in min..max
    sum = sum + i
  end

  sum

end


def sum_recursive(min,max)



  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end

