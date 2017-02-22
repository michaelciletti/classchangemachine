require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

	def test_cr_pass_empty_hash_returns_nil
		results = cashregister(0)
		assert_equal({}, results)
	end

	# def test_cr_pass_0_hash_returns_0_pennies
	# 	assert_equal({Pennies: 0}, makechange(0))
	# end

end