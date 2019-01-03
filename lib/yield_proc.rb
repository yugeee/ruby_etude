def greeting_ja(&block)
    texts = ['おはよう', 'こんにちは', 'こんばんは']
    greeting_common(texts, &block)
end

def greeting_en(&block)
    texts = ['good morning', 'hello', 'good evening']
    greeting_common(texts, &block)
end

def greeting_common(texts, &block)
    puts texts[0]
    puts block.call(texts[1])
    puts texts[2]
end

greeting_ja do |text|
    text * 2
end

greeting_en do |text|
    text.upcase
end

def greeting(&block)
    puts 'おはよう#'
    text = if block.arity == 1
        yield 'こんにちは#'
    elsif block.arity == 2
        yield 'こんに#', 'ちは#'
    end
    puts text
    puts 'こんばんは#'
end

greeting do |text|
    text * 2
end

greeting do |text_1, text_2|
    text_1 * 2 + text_2 * 2 
end

hello_proc = Proc.new do
    'Hello'
end

puts hello_proc.call

add_proc = Proc.new do |a, b|
    a + b
end

puts add_proc.call(1, 3)

def greeting(&block)
    puts 'おはよう?'
    text = block.call('こんにちは?')
    puts text
    puts 'こんばんは?'
end

repeat_proc = proc{ |text| text * 2 }

greeting(&repeat_proc)