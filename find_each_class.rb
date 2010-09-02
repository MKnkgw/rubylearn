#!/usr/bin/ruby

pattern = /(\w+)\.each/
ARGF.each{|line|
  if matchdata = pattern.match(line) then
    puts matchdata[1]
  end
}
