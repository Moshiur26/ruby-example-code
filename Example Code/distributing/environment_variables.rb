#!/usr/bin/env ruby

ENV.each {|e| puts e.join(': ') }

# You can use these environment variables to decide where to store temporary files, or to find out what
# sort of features your operating system offers, in real time, much as you did with RUBY_PLATFORM :

puts "##################"
tmp_dir = '/tmp'
if ENV['OS'] =~ /Windows_NT/
    puts "This program is running under Windows NT/2000/XP!"
    tmp_dir = ENV['TMP']
elsif ENV['PATH'] =~ /\/usr/
    puts "This program has access to a UNIX-style file system!"
else
    puts "I cannot figure out what environment I'm running in!"
    exit
end

#we can also set environment variables with ENV['variable_name'] = value , but only do this if we
# have a valid reason to use them. However, setting environment variables from within a program only applies to
# the local process and any child processes, meaning that the variables’ application is extremely limited.

# Although ENV acts like a hash, it’s technically a special object, but you can convert it to a true hash using
# its . to_hash method, as in ENV.to_hash .