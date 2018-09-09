class Bob
  def self.hey(remark_original)
    # strip the original input
    remark = remark_original.gsub(/\s+/, '')

    # yelling if the remark matches it's upcase version, AND there's a capital letter
    yelling = true if (remark == remark.upcase) && remark[/[A-Z]/]
    question = true if remark.chars.last == '?'

    if remark == ''
      'Fine. Be that way!'
    elsif yelling && question
      'Calm down, I know what I\'m doing!'
    elsif yelling
      'Whoa, chill out!'
    elsif question
      'Sure.'
    else
      'Whatever.'
    end
  end
end
