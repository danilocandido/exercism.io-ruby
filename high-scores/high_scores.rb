class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.sort.reverse.take 3
  end

  def report
    resport_phrase = "Your latest score was #{latest}. "
    resport_phrase << if latest >= personal_best
                        "That's your personal best!"
                      else
                        result = personal_best - latest
                        "That's #{result} short of your personal best!"
                      end
  end
end
