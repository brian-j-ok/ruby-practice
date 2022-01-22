def caeser_cipher (temp_string, shift = 1)
    lower = ('a'..'z').to_a.join
    upper = ('A'..'Z').to_a.join
    puts lower[shift..-1] + lower[0...shift] + upper[shift..-1] + upper[0...shift]
    temp_string.tr(lower + upper, lower[shift..-1,] + lower[0...shift] + upper[shift..-1] + upper[0...shift])
end

puts caeser_cipher("What a string!", 5)