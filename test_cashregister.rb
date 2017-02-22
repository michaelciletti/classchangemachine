require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

	def test_cr_pass_empty_hash_returns_0
		results = cashregister({})
		assert_equal(nil, results)
	end

	def test_cr_pass_0_hash_returns_0_pennies
		assert_equal({Pennies: 1}, cashregister(1))
	end

end