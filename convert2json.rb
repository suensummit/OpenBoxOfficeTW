require 'csv'
require 'json'

def is_int(str)
return !!(str =~ /^[-+]?[1-9]([0-9]*)?$/)
end

output = []
 lines = CSV.open(ARGV[0],{:col_sep => "\|",  :quote_char => "\|"}).readlines
 headers = lines.shift
 lines.each_with_index.map do |line, index| 
   output << Hash[*line.each_with_index.map {|col, index| [headers[index], is_int(col) ?    col.to_i : col]}.flatten]
 end
 File.open(ARGV[1], "w") do |f|
   f << output
 end

