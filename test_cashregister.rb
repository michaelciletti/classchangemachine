require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

	def test_cr_pass_empty_hash_returns_nil
		results = cashregister(0)
		assert_equal({}, results)
	end

	def test_cr_pass_1_returns_1_pennies
		assert_equal({Pennies: 1}, cashregister(1))
	end

	def test_cr_pass_2_returns_2_pennies
		assert_equal({Pennies: 2}, cashregister(2))
	end

	def test_cr_pass_5_returns_1_nickel
		assert_equal({Nickels: 1}, cashregister(5))
	end

	def test_cr_pass_6_returns_1_nickel_1_penny
		assert_equal({Nickels: 1, Pennies: 1}, cashregister(6))
	end

end