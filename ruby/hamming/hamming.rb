class Hamming
  class << self
    def compute(strand_a, strand_b)
      check_length(strand_a, strand_b)

      # use 'with_index' to pass an index value, but need to destructure it in the reduce (char, index)
      strand_a.each_char.with_index.reduce(0) do |memo, (char, index)|
        char != strand_b[index] ? memo += 1 : memo
      end
    end

    private
    def check_length(strand_a, strand_b)
      raise ArgumentError, 'Strands must be the same length' if strand_a.length != strand_b.length
    end
  end
end

module BookKeeping
  VERSION = 3
end
