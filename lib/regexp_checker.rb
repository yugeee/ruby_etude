# 文字列入力
print 'Text?: '
text = gets.chomp
puts text

# 正規表現入力
begin
    print 'Pattern?: '
    pattern = gets.chomp
    puts pattern
    regexp = Regexp.new(pattern)
rescue RegexpError => e
    puts "Invalid pattern: #{e.message}"
    retry
end

matches = text.scan(regexp)
if matches.size > 0
    puts "Matched: #{matches.join(', ')}"
else
    puts "Nothing matches."
end