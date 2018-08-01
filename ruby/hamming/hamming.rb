class Hamming
  class << self
    def compute(strand_a, strand_b)
      check_length(strand_a, strand_b)

      hamming = 0
      strand_a.each_char.with_index(0) do |char, index|
        hamming += 1 if char != strand_b[index]
      end

      hamming
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
