def get_even_num(num)
  if num == nil || num <= 0 || !num.kind_of?(Integer)
    return "please type a number starting from 1"
  end

  even_numbers=[]
  (1..num).each do |i|
    even_numbers << i if i % 2 == 0
  end
  even_numbers
end
