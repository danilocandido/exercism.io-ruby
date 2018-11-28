class Acronym
  def self.abbreviate(description)
    description.split(/[\s,-]/).map { |i | i[0] }.join.upcase
  end
end
