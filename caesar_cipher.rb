require 'pry-byebug'
LOWERCASE_A = 97
LOWERCASE_Z = 122
UPPERCASE_A = 65
UPPERCASE_Z = 90
ALPHABETSIZE = 26

def shift(char, shift_value)
    ordinal = char.ord
    if ordinal.between?(LOWERCASE_A, LOWERCASE_Z) || ordinal.between?(UPPERCASE_A,UPPERCASE_Z) then
        base = ordinal < UPPERCASE_Z ? 65 : 97
        ordinal = (((ordinal - base) + shift_value) % ALPHABETSIZE) + base
    end
    ordinal.chr
end

def caesar_cipher(string, shift_value)
    string.split(//).map{ |c| shift(c, shift_value)}.join
end

puts caesar_cipher("What a string!", 5)
