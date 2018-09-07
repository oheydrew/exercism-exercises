class Raindrops
  def self.convert(num)
    check_input(num)
    conditions = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

    output = ''
    conditions.each_key do |condition|
      output += conditions[condition] if (num % condition).zero?
    end

    return output if output != ''
    num.to_s
  end

  private_class_method def self.check_input(input)
    int_input = input.to_i
    raise ArgumentError, 'Input must be a number greater than zero' if int_input.zero?
  end
end

module BookKeeping
  VERSION = 3
end
