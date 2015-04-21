module Debug
  def whoAmI?
    "#{self.type.name} (\##{self.id}): #{self.to_s}"
  end
end
class Phonograph
  include Debug
  # ...
end
class EightTrack
  include Debug
  # ...
end
ph = Phonograph.new(", ")
et = EightTrack.new(", ")
ph.whoAmI?	»	"Phonograph (#537766170): , "
et.whoAmI?	»	"EightTrack (#537765860): , "

module Debug2
  def whoIsHe?
    "#{self.type.name} (\##{self.id}): #{self.to_s}"
  end
end
class Ponograph2
  include Debug2
  # ...
end
class EightTrack2
  include Debug2
  # ...
end
ph = Phonograph2.new("; ")
et = EightTrack2.new("; ")
ph.whoIsHe? » "Phonograph2 (#53776170): ; "
et.whoIsHe? » "EightTrack2 (#537765860): ;"
