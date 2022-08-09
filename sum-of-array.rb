def sumnums(nums, target)
  result = Array.new
  previous = 0
  if nums.length > 2
    nums.each_with_index do |num,index|
      nums.each_with_index do |number,idx|
        next if num == number
        sum = (num + number)
        result.push(index,idx) if sum == target.to_i
      end
    end
  else
    sum = nums[0] + nums[-1]
    result.push(0,1) if sum == target.to_i
  end
  p "addition of this index values is equal to target #{result}"
end

puts "Please enter the array and target Ex: sumnums([3,2,4],6)"
p "Enter camma seperated integers ex: 1,2,4,6"
nums = gets.chomp.split(',').map {|num| num.to_i}
p '.....'
p "Enter target as integer ex: 3"
target = gets.chomp
p '.....'

sumnums(nums, target)
