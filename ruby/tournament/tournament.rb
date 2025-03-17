class Tournament
  def self.tally(matches_str)
    tally_str = ["Team".ljust(30), "MP", " W", " D", " L", " P"].join(" | ")
    
    # split by `\n`
    matches = matches_str.split "\n"
    
    matches.each {|match|
      match.split(";")
    }

    tally_str
  end
end