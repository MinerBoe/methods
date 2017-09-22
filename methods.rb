# *****************************************************
#
#   Methods
#
#     Write the three methods below. Use the tests in
#     `test.rb` to verify that they work
#     correctly. DO NOT print any info to the console.
#
# *****************************************************


# sleep_in?
#
# Students sleep in if it is not a weekday or we're on vacation.
#
# > Parameters
# ------------
#   * weekday  - true only if it is a weekday
#   * vacation - true only if the student is on vacation

def sleep_in?(weekday, vacation)
	if !weekday || vacation
		return true
	end
	return false
end


# monkey_trouble?
#
# We have two monkeys, a and b, and the parameters a_smile and b_smile
# indicate if each is smiling.
# We are in trouble if they are both smiling or if neither of them is smiling.
# Return true if we are in trouble.
#
# > Parameters
# ------------
#   * a_smiling   - true only if monkey a is smiling
#   * b_smiling   - true only if monkey b is smiling


def monkey_trouble?(a_smiling, b_smiling)
	if (a_smiling && b_smiling) || (!a_smiling && !b_smiling)
		return true
	end
	return false
end


# sum_double
#
# Given two int values, return their sum. Unless the two values are the same,
# then return double their sum.
#
# > Parameters
# ------------
#   * a - an integer
#   * b - an integer


def sum_double(a, b)
	if a == b
		return 2*(a+b)
	end
	return a + b
end




# *****************************************************
#
#   Testing
#
#     Write the three methods below, but this time the
#     tests are not given to you, so write those first.
#
# *****************************************************


# blackjack
#
# Given 2 int values greater than 0, return whichever value is nearest to 21
# without going over. Return 0 if they both go over.
#
# > Parameters
# ------------
#   * a - an integer
#   * b - an integer

def blackjack(a, b)
	dist_a = 21 - a
	dist_b = 21 - b

	if a >= 21 && b >= 21
		return 0
	end

	if dist_a < 0
		return b
	end

	if dist_b < 0
		return a
	end

	if dist_a > dist_b
		return b
	end

	return a
end

# n_twice
#
# Given a string and an int n, return a string made of the first and last n
# chars from the string.
#
# Hint | Use string.slice
#      | http://ruby-doc.org/core-2.2.0/String.html#method-i-slice
#
# > Parameters
# ------------
#   * str - a string with length at least n
#   * n   - an integer


def n_twice(str, n)
	if n > str.length
		return str
	end
	return str[0,2] + str[(str.length - n), str.length]
end

# close_far
#
# Given three ints, a b c, return true if one of b or c is "close" (differing
# from a by at most 1), while the other is "far", differing from both other
# values by 2 or more. Note: n.abs computes the absolute value of number n.
#
# > Parameters
# ------------
#   * a - an integer
#   * b - an integer
#   * c - an integer
#
# TODO - write close_far (tests first)

def close_far(a, b, c)
	dist_ab = (b-a).abs
	dist_ac = (c-a).abs
	is_close = false
	is_far = false
	if dist_ab <= 1 || dist_ac <= 1
		is_close = true
	end
	if dist_ab >= 2 || dist_ac >= 2
		is_far = true
	end
	if is_close && is_far
		return true
	end
	return false
end
