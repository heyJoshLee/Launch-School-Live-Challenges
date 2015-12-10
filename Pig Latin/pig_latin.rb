class PigLatin
  VOWELS = %w(a e i o u)

  def self.translate(words)
   translated_words = []
   dialect = "ay"

   first_two_yt_xr = %w(yt xr)
   first_two_ch_qu_th = %w(ch qu th)
   first_three_squ_thr_sch = %w(squ thr sch)

    words.split(" ").each do |word|
      if VOWELS.include?(word[0])
        translated_words << (word + "ay")
      elsif first_two_yt_xr.include? word[0,2]
        translated_words << (word + "ay")
      elsif word[0,2] == "ye"
        translated_words << (shift_letters_then_push(word) + dialect)
      elsif first_three_squ_thr_sch.include? word[0,3]
        translated_words << (shift_letters_then_push(word,3) + dialect)
      elsif first_two_ch_qu_th.include? word[0,2]
        translated_words << (shift_letters_then_push(word, 2) + dialect)
      else
        translated_words << (shift_letters_then_push(word) + dialect)
      end
    end

    translated_words.join(" ")
  end

private
  def self.shift_letters_then_push(word, n=0)
    if n == 0
      a = word[n]
      word[n] = ""
      word << a
    else
      a = word[0,n]
      word[0,n] = ""
      word << a
    end
  end
end