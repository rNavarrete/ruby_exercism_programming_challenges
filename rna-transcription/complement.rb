class Complement

  def self.of_dna(entry)
    rna = []

    entry.chars.each do |letter|
      rna << dna_transcription(letter)
    end
    rna.join
  end

  def self.dna_transcription(entry)

    case entry
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    when 'A'
      'U'
    else
      puts "Hey invalid entry."
    end
  end

  def self.of_rna(entry)
    case entry
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    when 'A'
      'T'
    when 'U'
    'A'
    else
      puts "Hey invalid entry."
    end

  end

  def self.rna_transcription(entry)

  end


end