first_name = "John"

if {first_name: first_name} in {first_name: "John"}
  puts "First name is John!"
end

if {first_name: first_name} in {first_name: "Bob"}
  puts "First name is Bob!"
else
  puts "First name is not Bob!"
end