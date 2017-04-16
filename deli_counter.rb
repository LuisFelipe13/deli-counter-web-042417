# Write your code here.
def line(katz_deli)
  if katz_deli.size == 0
    current_line = "The line is currently empty."
  else
    line_order = 1
    current_line = "The line is currently:"
    katz_deli.each do |name|
      current_line += " #{line_order}. #{name}"
      line_order += 1
    end
  end
  puts current_line
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  line_order = katz_deli.index(name)
  line_order += 1
  puts "Welcome, #{name}. You are number #{line_order} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end
