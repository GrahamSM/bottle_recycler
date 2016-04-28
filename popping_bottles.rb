#Each bottle of pop costs $2
def num_bottles(inv)
	inv/2
end

def total_caps(inv)
	return inv/2
end
#Every two bottles will return 1 bottle
def bottle_redeem(num_bottles)
	num_bottles/2
end

#Every 4 bottles will return 1 bottle
def cap_redeem(num_bottles)
	num_bottles/4
end

def leftover_bottles(num_bottles)
	num_bottles%2
end

def leftover_caps(num_bottles)
	num_bottles%4
end

def main
	repl = true
	while repl
		puts "How much money are you willing to invest?"
		inv = gets.chomp.to_i
		bottles = num_bottles(inv)
		bottles_redeemed = bottle_redeem(bottles)
		caps = cap_redeem(bottles)
		puts "Total bottles from investment: #{bottles}"
		puts "Total caps from investment: #{bottles}"
		puts "Total bottles to be redeemed from bottles: #{bottles_redeemed}"
		puts "Total bottles to be redeemd from caps: #{caps}"
		puts "Bottles redeemable: #{bottle_redeem(inv) + cap_redeem(inv)}"
		puts "Leftovers after redemption"
		puts "---------------------------"
		puts "Bottles: #{leftover_bottles(bottles)}"
		puts "Caps: #{leftover_caps(bottles)}"
		puts "Would you like to continue (y/n)?"
		condition = gets.chomp.downcase
		if !(condition=="y")
			repl = false
		end
	end
end

main()

