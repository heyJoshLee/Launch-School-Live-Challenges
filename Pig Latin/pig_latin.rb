class PigLatin

  VOWELS = %w(a e i o u)

  def self.translate(words)
   translated_words = []

    words.split(" ").each do |word|
      

      if VOWELS.include?(word[0])


        translated_words << (word + "ay")

         elsif word[0,2] == "yt" || word[0,2] == "xr"
          translated_words << (word + "ay")

        elsif word[0,2] == "ye"
          first_letter = word[0]
          word[0] = ""
          word <<first_letter
          translated_words << (word + "ay")

            

        elsif word[0,3] == "squ" || word[0,3] == "thr" || word[0,3] == "sch"
        first_letters = word[0,3]
        word[0,3] = ""
        word << first_letters
        translated_words << (word + "ay")

      elsif word[0,2] == "ch" || word[0,2] == "qu" || word[0,2] == "th" 
        first_letters = word[0,2]
        word[0,2] = ""
        word << first_letters
        translated_words << (word + "ay")

      
      else
        a = word[0]
        word[0] = ""
        word << a
        translated_words << (word + "ay")
      end
    
    end

    translated_words.join(" ")

  end


end