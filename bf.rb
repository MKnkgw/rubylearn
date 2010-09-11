#!/usr/bin/ruby
def execute(src, membuffer)
  srcindex = 0
  memindex = 0
  while srcindex < src.length
    case src[srcindex]
    when ">"[0]
      memindex += 1
    when "<"[0]
      memindex -= 1
    when "+"[0]
      membuffer[memindex] += 1
    when "-"[0]
      membuffer[memindex] -= 1
    when "."[0]
      STDOUT.putc(membuffer[memindex])
    when ","[0]
      membuffer[memindex] = STDIN.getc
    when "["[0]
      if membuffer[memindex] == 0
        depth = 1
        while depth != 0
          srcindex += 1
          case src[srcindex]
          when "["[0]
            depth += 1
          when "]"[0]
            depth -= 1
          end
        end
      end
    when "]"[0]
      depth = -1
      while depth != 0
        srcindex -= 1
        case src[srcindex]
        when "["[0]
          depth += 1
        when "]"[0]
          depth -= 1
        end
      end
      srcindex -= 1
    end
    srcindex += 1
  end
end

execute(ARGF.read, Array.new(30000, 0))
