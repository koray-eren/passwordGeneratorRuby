INTERACTIVE = false
passLength = 20

uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lowercase = uppercase.downcase
specials = "!@#$%^&*()_+-=';:,.<>/?[]{}"
numbers = "1234567890"

# get password length from user + validation
if INTERACTIVE
    print "Enter a password length: "
    passLength = ""
    passLength = gets.strip.to_i
    while passLength == 0
        print "Enter a number (decimals will round down): "
        passLength = gets.strip.to_i
    end
    print "Enter characters to exclude (no spaces): "
    excluded = gets.strip
end

master_set = (uppercase + lowercase + specials + numbers).split("")
if excluded != nil
    excluded.split("")
    for i in (0..excluded.length)
        master_set.delete(excluded[i] )
    end
end

generated_password = ""
for i in (1..passLength)
    generated_password << (master_set.sample)
end

puts "\nYour Password: \n#{generated_password}\n\n"