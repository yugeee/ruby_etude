class WordSynth
    def initialize
        @effects = []
    end

    def add_effect(effect)
        @effects << effect
    end

    def play(original_name)
        @effects.reduce(original_name) do |words, effect|
            effect.call(words)
        end
    end
end