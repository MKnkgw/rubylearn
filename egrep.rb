#!/usr/bin/ruby

pattern = Regexp.new(ARGV.shift)
ARGV.each{|arg|
  File.open(arg){|file|
    file.each{|line|
      if pattern.match(line) then
        puts line
      end
    }
  }
}
