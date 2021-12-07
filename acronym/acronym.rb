class Acronym

  def self.abbreviate(phrase)
    split_phrase = phrase.split(/\s|\-/)
    acronym = ''

    split_phrase.each do |w|
      w[0] =~ /[A-Za-z]/ ? (acronym += w[0].capitalize) : acronym
    end
    
    acronym
  end
end