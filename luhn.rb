class Luhn

	def initialize(number)
		if number.scan(/[\D]/) && number >= 2
			@number = @number.split("").delete_if { |x| x == " "}.reverse

		end
end


	def self.valid?(number)

		if @number.nil? 
			return false
		end


		arr = []
		@number.each_with_index do |n,idx|
    if idx % 2 != 0
      arr << n.to_i * 2
    else
      arr << n.to_i 
    end

    count = 0

    arr.map do |z|
      if z  > 9
        count += 9
      end
    end

    if ((arr.sum * 9) - count) % 10 == 0
      return true
    else
      return false
    end
  end
    
 

	end


end

