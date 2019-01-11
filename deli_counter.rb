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

$n = 1

def take_a_number(katz_deli)
  katz_deli << $n
    puts "You are number #{$n}"
    $n += 1
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

def doubler
  $number = $number * 2
end
