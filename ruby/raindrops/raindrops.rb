class Raindrops
  def self.convert(num)
    conditions = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

    output = conditions.reduce('') do |memo, (key, value)|
      (num % key).zero? ? memo + value : memo
    end

    output != '' ? output : num.to_s
  end
end

module BookKeeping
  VERSION = 3
end
