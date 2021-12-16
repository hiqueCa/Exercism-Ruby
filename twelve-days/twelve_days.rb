module TwelveDays

  DAY_ORDINALITY_PARTS = {
    1 => {
      "first" => "a Partridge in a Pear Tree."
      }, 
    2 => {
      "second" => "two Turtle Doves,"
    },
    3 => {
      "third" => "three French Hens,"
    }, 
    4 => {
      "fourth" => "four Calling Birds,"
    },
    5 => {
      "fifth" => "five Gold Rings,"
    }, 
    6 => {
      "sixth" => "six Geese-a-Laying,"
    },
    7 => {
      "seventh" => "seven Swans-a-Swimming,"
    }, 
    8 => {
      "eighth" => "eight Maids-a-Milking,"
    },
    9 => {
      "ninth" => "nine Ladies Dancing,"
    }, 
    10 => {
      "tenth" => "ten Lords-a-Leaping,"
    },
    11 => {
      "eleventh" => "eleven Pipers Piping,"
    },
    12 => {
      "twelfth" => "twelve Drummers Drumming,"
    }
  }
  
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
      song_part = fetch_ordinal_and_song_part(i).values[0]
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
    ordinal = fetch_ordinal_and_song_part(verse).keys[0]
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
