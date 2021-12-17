module TwelveDays

  DAY_ORDINALITY_PARTS = 
    [{
      "first" => "a Partridge in a Pear Tree."
      }, 
    {
      "second" => "two Turtle Doves,"
    },
    {
      "third" => "three French Hens,"
    }, 
    {
      "fourth" => "four Calling Birds,"
    },
    {
      "fifth" => "five Gold Rings,"
    }, 
    {
      "sixth" => "six Geese-a-Laying,"
    },
    {
      "seventh" => "seven Swans-a-Swimming,"
    }, 
    {
      "eighth" => "eight Maids-a-Milking,"
    },
    {
      "ninth" => "nine Ladies Dancing,"
    }, 
    {
      "tenth" => "ten Lords-a-Leaping,"
    },
    {
      "eleventh" => "eleven Pipers Piping,"
    },
    {
      "twelfth" => "twelve Drummers Drumming,"
    }]
  
  
  def self.song
    complete_song
  end

  private

  def self.fetch_ordinal_and_song_part(verse)
    DAY_ORDINALITY_PARTS[verse]
  end

  def self.accumulate_complete_song_verse(verse)
    song_parts = []
    1.upto(verse) do |i|
      song_part = fetch_ordinal_and_song_part(i-1).values[0]
      song_parts.insert(0, song_part)
    end
    
    song_parts
  end

  def self.join_song_parts_in_verse(verse)
    song_parts = accumulate_complete_song_verse(verse)
    unless verse == 1
      song_parts[-1] = "and " + song_parts[-1]
    end
    song_parts.join(" ")
  end

  def self.complete_song_verse(verse)
    ordinal = fetch_ordinal_and_song_part(verse-1).keys[0]
    song_verse = join_song_parts_in_verse(verse)

    "On the #{ordinal} day of Christmas my true love gave to me: #{song_verse}"
  end

  def self.complete_song
    song = []
    1.upto(12) do |i|
      song << complete_song_verse(i)
    end

    expected_format_song = song.join("\n\n") + "\n"
    expected_format_song
  end
end
