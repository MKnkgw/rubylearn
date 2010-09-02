#!/usr/bin/ruby

ARGV.each{|arg|
  File.open(arg){|file|
    file.each{|line|
      puts line
    }
  }
}
