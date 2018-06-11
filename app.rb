# LOOPS
i = 0
j = 11

# INIFITE loop
# loop do # runs forever
#   # code to run inifitely
# end

# WHILE DO loop
while i < 10 do # conditon is checked before the code runs
  puts "is is #{i}"
  i += 1
end

# BEGIN loop aka (DO WHILE loop)
begin # runs code before condition is checked
  puts "is is #{j}"
  j += 1
end while i < 10

# INVERSE - stops loop when the conditon is true
until i > 10 do
  puts "Until : #{i}"
  i += 1
end
begin
  puts "Do until/begin : #{i}"
  i += 1
end until i > 10


# FOR loop
for k in 0..5 # 2 dots is "Up to and including", 3 dots is "Up to not including"
  puts "FOR : #{k}"
end


# EACH loop - range used at the beginning
(0..5).each do |l| # argument places between pipes
  puts l
end
("A".."E").each do |m|
  puts m
end

arr1 = ['please','print','some','words']

arr1.each do |word|
  puts word
end
arr1.each_with_index do |word, index|
  puts "#{word} at index : #{index}"
end


# MAP
new_array = arr1.map do |word| # .map method loops through array, performs function (the code below) and returns a new array
  word.reverse
end

puts new_array


arr1.map do |word|
  word.reverse! # permanently changing data
end

puts arr1



# REDUCE - reduce array to a total number/sum of numbers
some_numbers = [9,314,123,1,14,321,414,4,34,3,6,5,87,645]
sum = some_numbers.reduce 0 do |total, number| # 0 is starting number followed by 2 arguments
  total + number # returns automatically so no need to specify
end

puts sum

# below performs the same as above
quick_sum = some_numbers.reduce 0, :+ # does the same as above

puts sum
