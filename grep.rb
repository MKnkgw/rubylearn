pattern = ARGV.shift
ARGV.each{|arg|
  File.open(arg){|file|
    file.each{|line|
      if line.index(pattern) then
        puts line
      end
    }
  }
}
