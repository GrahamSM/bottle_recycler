
def pop_bottles
	puts "How much money are you willing to invest?"
	inv = gets.chomp.to_i
	bottles = inv/2 #One bottle per $2 investment
	bottles_redeemed = bottles/2 #One bottle per two bottles recycled
	caps = bottles/4 #One bottle per four caps recycled
	leftover_bottles = bottles%2
	leftover_caps = bottles%4
	puts "Total bottles from investment: #{bottles}"
	puts "Total caps from investment: #{bottles}"
	puts "Total bottles to be redeemed from bottles: #{bottles_redeemed}"
	puts "Total bottles to be redeemd from caps: #{caps}"
	puts "Bottles redeemable: #{bottles_redeemed + caps}"
	puts "Leftovers after redemption"
	puts "---------------------------"
	puts "Bottles: #{leftover_bottles}"
	puts "Caps: #{leftover_caps}"
	while true
		puts "Would you like to continue (y/n)?"
		condition = gets.chomp.downcase
		if condition == "y"
			pop_bottles
			break
		elsif condition == "n"
			break
		else
			puts "Please ensure that you enter either y or n"
		end
	end
end

pop_bottles
