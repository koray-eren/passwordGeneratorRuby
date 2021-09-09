INTERACTIVE = false
passLength = 20

uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lowercase = uppercase.downcase
specials = "!@#$%^&*()_+-=';:,.<>/?[]{}"
numbers = "1234567890"

# get desired password length from user + validation
if INTERACTIVE
    print "Enter a password length: "
    passLength = ""
    passLength = gets.strip.to_i
    while passLength == 0
        print "Enter a number (decimals will round down): "
        passLength = gets.strip.to_i
    end
    print "Enter characters to exclude (no spaces): "
    excluded = gets.strip.split("")
end

# master_set = set of characters for randomiser to draw from
master_set = (uppercase + lowercase + specials + numbers).split("")

# remove any excluded characters from the master set
if excluded != nil
    excluded.each { |excluded_character| master_set.delete(excluded_character) }
end

generated_password = ""
for i in (1..passLength)
    generated_password << (master_set.sample)
end

puts "\nYour Password: \n#{generated_password}\n\n"