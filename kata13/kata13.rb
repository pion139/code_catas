#!/usr/bin/env ruby
def line_type(line)
  return 0 if line.length == 0
  return 1 if (line[0] == '/' && line[1] == '/')

  return 10
  #start
  #if (start_comment = line.index('/*', start_comment+1))
  #  puts line.index('/*')
  #end
end

def trim_line(line)
  start_comment = line.index('/*')
  end_comment = line.index('*/')

  if ( start_comment && end_comment )
    gsub
  end

  return line
end

filename = ARGV[0]
lines = File.readlines(filename)

line_count = 0

lines.each do |line|
  line.strip!
  line = trim_line line

  type = line_type line

  next if (type <= 1)

  puts "#{line}  #{line.length}"
  line_count += 1
end

puts "In total: #{line_count} lines of code"
