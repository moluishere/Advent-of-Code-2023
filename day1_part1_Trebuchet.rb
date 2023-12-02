# Advent of Code: 2023 Day 1: Trebuchet?!
# run: ruby day1_part1_Trebuchet.rb

# solution 1
def get_the_solution_1_answer
  result = sum_calibration_values(content)
  puts "The sum of all calibration values is: #{result}"
end

def sum_calibration_values(content)
  sum = 0

  content.each_line do |line|
    digits = line.scan(/\d/).map(&:to_i)
    sum += digits.first * 10 + digits.last
  end

  sum
end

def content
 "1abc2
 pqr3stu8vwx
 a1b2c3d4e5f
 treb7uchet"
end

get_the_solution_1_answer


## solution 2
def get_the_solution_2_answer
  result = sum_calibration_values(create_file_and_return_path)
  puts "The sum of all calibration values is: #{result}"
end

def sum_calibration_values(file_path)
  sum = 0

  File.foreach(file_path) do |line|
    digits = line.scan(/\d/).map(&:to_i)
    sum += digits.first * 10 + digits.last
  end

  sum
end

def create_file_and_return_path
  # Specify the file path
  file_path = "day1_part1_calibration_document.txt"

  # Open the file in write mode (creates a new file or truncates an existing one)
 File.open(file_path, "w") do |file|
    file.puts(file_content)
  end

  puts "File '#{file_path}' has been created with content."

  file_path
end

def file_content
  "1abc2
  pqr3stu8vwx
  a1b2c3d4e5f
  treb7uchet"
end

get_the_solution_2_answer
