class Acronym
  def self.abbreviate(description)
    description.upcase.scan(/\b\w/).join
  end
end
