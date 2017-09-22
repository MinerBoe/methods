require './test_setup'
require './methods'

describe 'Methods' do

  describe 'sleep_in' do

    it 'should sleep in on the weekend at home' do
      sleep_in?(false, false).must_equal(true)
    end

    it 'should not sleep in during the week at home' do
      sleep_in?(true, false).must_equal(false)
    end

    it 'should sleep in on vacation on the weekend' do
      sleep_in?(false, true).must_equal(true)
    end

    it 'should sleep on vacation during the week' do
      sleep_in?(true, true).must_equal(true)
    end

  end

  describe 'monkey_trouble' do

    it 'is trouble when both monkeys are smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

    it 'is not trouble when only A is smiling' do
      monkey_trouble?(true, false).must_equal(false)
    end

    it 'is not trouble when only B is smiling' do
      monkey_trouble?(false, true).must_equal(false)
    end

    it 'is trouble when neither monkey is smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

  end

  describe 'sum_double' do

    it 'finds the sum' do
      sum_double(1, 2).must_equal(3)
    end

    it 'doubles the sum when the numbers are the same' do
      sum_double(3, 3).must_equal(12)
    end

  end

  describe 'blackjack' do
    it 'both are over 21' do
      blackjack(22, 24).must_equal(0)
    end

    it '19 is close to 21' do
      blackjack(19, 16).must_equal(19)
    end

    it 'equal to 21' do
      blackjack(21, 21).must_equal(0)
    end

    it 'one over one under' do
      blackjack(12, 25).must_equal(12)
    end
  end

  describe 'n_twice' do
    it 'long word' do
      n_twice("friendship", 2).must_equal("frip")
    end

    it 'string length equals integer' do
      n_twice("hi", 2).must_equal("hihi")
    end

    it 'invalid input' do
      n_twice("hi", 3).must_equal("hi")
    end
  end

  describe 'close_far' do
    it 'b close to a, c far' do
      close_far(1, 2, 8).must_equal(true)
    end
    it 'all equal' do
      close_far(2, 2, 2).must_equal(false)
    end
    it 'one close zero far' do
      close_far(5, 6, 5.5).must_equal(false)
    end
    it 'zero close both far' do
      close_far(5, 9, 10).must_equal(false)
    end
    it 'c close b far' do
      close_far(5, 10, 6).must_equal(true)
    end
  end

end
