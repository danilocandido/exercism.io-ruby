class BeerSong
  def self.recite(total, bottles)
    rest = total - bottles

    song = <<-TEXT.gsub(/^ */, '')
      #{how_many_bottles(total).capitalize} of beer on the wall, #{how_many_bottles(total)} of beer.
      Take #{take(rest)} down and pass it around, #{how_many_bottles(rest)} of beer on the wall.
    TEXT
    song
  end

  class << self
    private

    def how_many_bottles(number)
      case number
      when 1 then "#{number} bottle"
      when 0 then "no more bottles"
      else "#{number} bottles"
      end
    end

    def take(rest)
      rest > 0 ? 'one' : 'it'
    end
  end
end
