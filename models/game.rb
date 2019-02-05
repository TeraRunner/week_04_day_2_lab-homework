class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def comparator()
    if ((@hand1 == "rock" || @hand2 == "rock") && (@hand1 == "scissors" || @hand2 == "scissors"))
      return "rock"
    elsif ((@hand1 == "rock" || @hand2 == "rock") && (@hand1 == "paper" || @hand2 == "paper"))
      return "paper"
    elsif ((@hand1 == "scissors" || @hand2 == "scissors") && (@hand1 == "paper" || @hand2 == "paper"))
      return "scissors"
    else
      return "something went wrong"
    end
  end

end
