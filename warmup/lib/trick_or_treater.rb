class TrickOrTreater
attr_reader :costume
def initialize(costume)
  @costume = costume.style

end

def dressed_up_as
  @costume
end

end
