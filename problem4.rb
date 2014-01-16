# Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

#906609

def palindrome?(num)
  num == num.to_s.reverse.to_i
end

res = []
999.downto(100) do |i|
  999.downto(100) do |y|
    result = i * y
    res << result if palindrome? result
  end
end

puts res.max