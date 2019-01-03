retry_count = 0
begin
    puts '処理を開始する'
    1/0
rescue
    retry_count += 1
    if retry_count <= 3
        puts "retryします (#{retry_count}回目)"
        retry
    else
        puts 'retryに失敗しました'
    end
end

def currency_of(country)
    case country
    when :japan
        'yen'
    when :us
        'dollar'
    when :india
        'rupee'
    else
        raise ArgumentError, "無効な国名です。 #{country}"
    end
end

puts currency_of(:japan)
puts currency_of(:italu)