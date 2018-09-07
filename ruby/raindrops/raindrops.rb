class Raindrops
  def self.convert(num)
    raise ArgumentError, 'Input must be a number greater than zero' if num.zero?

    conditions = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

    output = ''
    conditions.each_key do |condition|
      output += conditions[condition] if (num % condition).zero?
    end

    if output != ''
      output
    else
      num.to_s
    end
  end
end

module BookKeeping
  VERSION = 3
end