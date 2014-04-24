task_list = Hash.new

puts "What's your name?"
name = gets.chomp
puts "What task do you have to do #{name}?"
task = gets.chomp
while task != "I'm Lazy!"
  if task_list.has_key?(task)
    task_list[task] += "#{task}"
  else
    task_list[task] = "#{task}"
  end
  puts "Would you like to add more tasks? If no more tasks? Type in 'I'm Lazy!'"
  task = gets.chomp
end
  task_list.each do |task, x|
    puts "
#{name} has to #{task}!"
end