# our DB of username passwords
users = [
  { username: 'ashish', password: 'p1' },
  { username: 'jack', password: 'p2' },
  { username: 'puppy', password: 'p3' },
  { username: 'aashrit', password: 'p4' },
  { username: 'golu', password: 'p5' }
]

def authenticate(username, password, user_list)
  user_list.each do |record|
    if record[:username] == username && record[:password] == password
      return record
    end
  end

  # if none of the records matched, return error message
  'You entered the wrong credentials'
end

puts 'Welcome to the Ruby Authenticator'
30.times { print '-' }
puts

puts 'Enter your username and password below:'
puts 'If password is correct, you will get back that user\'s object'

trials = 1
while trials < 4
  print 'Username: '
  uname = gets.chomp
  print 'Password: '
  pword = gets.chomp

  auth_msg = authenticate(uname, pword, users)
  puts auth_msg

  puts 'Press q to quit and any other key to continue..'
  user_choice = gets.chomp.downcase
  break if user_choice == 'q'
  trials += 1
end

puts 'Done. You exceeded more than 3 trials' if trials == 4
