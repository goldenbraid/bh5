require_relative "../lib/bh5"

def ask(detail)
  print "#{detail}: "
  return gets.chomp
end

ENV["BH5_USERNAME"] ||= ask "Username"
ENV["BH5_PASSWORD"] ||= ask "Password"
