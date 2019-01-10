# Write your code here.
katz_deli = []

def line(customers)
  if customers.size == 0
    puts "The line is currently empty."
  else customers.size > 0
    customers.each_with_index do |name, number|
    katz_deli.push("#{number + 1}. #{name}")
  end
  puts "The line is currently: " + katz_deli*" "
end
end

def take_a_number(katz_deli, string)
  katz_deli << string
  new_cust = katz_deli.last
  new_cust_num = katz_deli.index(string)
    puts "Welcome, #{new_cust}. You are number #{new_cust_num + 1} in line."
end

=begin

def now_serving(katz_deli)
  now_serv = katz_deli[0]
  if katz_deli.size > 0
    katz_deli.each do |name|
    puts "Currently serving #{now_serv}."
    katz_deli.shift
  else katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  end
end

=end

def now_serving(katz_deli)
  until katz_deli.size == 0
    puts "Currently serving #{katz_deli.shift}."
    return katz_deli
  end
  puts "There is nobody waiting to be served!"
end
