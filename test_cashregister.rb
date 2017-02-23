require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

	def test_cr_pass_empty_hash_returns_nil
		results = cashregister(0)
		assert_equal({}, results)
	end

	def test_cr_pass_1_returns_1_pennies
		assert_equal({pennies: 1}, cashregister(1))
	end

	def test_cr_pass_2_returns_2_pennies
		assert_equal({pennies: 2}, cashregister(2))
	end

	def test_cr_pass_5_returns_1_nickel
		assert_equal({nickels: 1}, cashregister(5))
	end

	def test_cr_pass_6_returns_1_nickel_1_penny
		assert_equal({nickels: 1, pennies: 1}, cashregister(6))
	end

	def test_cr_pass_10_returns_1_dime
		assert_equal({dimes: 1}, cashregister(10))
	end

	def test_cr_pass_11_returns_1_dime_1_penny
		assert_equal({dimes: 1, pennies: 1}, cashregister(11))
	end

	def test_cr_pass_25_returns_1_quarter
		assert_equal({quarters: 1}, cashregister(25))
	end

	def test_cr_pass_19_returns_1_dime_1_Nickel_4_pennies
		assert_equal({dimes: 1, nickels: 1, pennies: 4}, cashregister(19))
	end

	def test_cr_pass_24_returns_2_dime_0_Nickel_4_pennies
		assert_equal({dimes: 2, pennies: 4}, cashregister(24))
	end

	def test_cr_pass_29_returns_1_Quarter_4_pennies
		assert_equal({quarters: 1, pennies: 4}, cashregister(29))
	end

end