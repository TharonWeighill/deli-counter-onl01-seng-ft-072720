
def take_a_number(current_line, name)
  current_line.push(name)
  puts "Welcome, #{name}. You are number #{current_line.length} in line."
end

def now_serving(current_line)
  if current_line.length === 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line[0]}."
    current_line.shift()
  end
end

def line(current_line)
  if current_line.length === 0
    puts "The line is currently empty."
  else
    line_status = "The line is currently: "
    current_line.each_with_index do |name, index|
      line_status = line_status + "#{index + 1}. #{name} "
    end
  puts line_status.strip()
  end
end

# katz_deli = ["Moshe", "Fayge", "Rivki"]


def line(array)
  if array.length >= 1
    nuarray = []
    counter = 1 
    array.each do |name|
      nuarray.push("#{counter}. #{name}")
      counter += 1 
    end 
    puts "The line is currently: #{nuarray.join(" ")}"
  else
    puts "The line is currently empty."
  end
end

line(katz_deli)

def line_simple(array)
  current_line = "The simple line is currently:"
  array.each.with_index(1) do |value, indexemus|  
    current_line << " #{indexemus}. #{value},"    
    end 
  puts current_line
end 
  
line_simple(katz_deli)


def take_a_number(line, new_person)
  line.push(new_person) # could say: "line << new_person"
  puts "Welcome, #{new_person}. You are number #{line.length} in line."
end

take_a_number(katz_deli, "Fyvish")

def now_serving(line)
  if line.length == 0 # could say: "if deli.empty?"
    puts"There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}." # could say: "Currently serving #{line.first}."
    line.shift # this works in the IDE but no on repl.it
  end
end

puts now_serving(katz_deli)
puts katz_deli

