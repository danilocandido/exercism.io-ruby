class Raindrops
  def self.convert(number)
    contents(number)
  end

  private
    def self.contents(number)
      hash = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
      string_content = hash.map{ |key, value| value if number % key == 0  }.compact.join
      string_content.empty? ? number.to_s : string_content
    end
end

module BookKeeping
  VERSION = 3
end
