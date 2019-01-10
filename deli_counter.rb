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
    puts "Welcome, #{string}. You are number #{katz_deli.length} in line."
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

$number = 5

def doubler(n)
  n * 2
end

number = doubler(number)

number
