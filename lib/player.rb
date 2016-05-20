
class Player < StandardError

  attr_reader :token

  def initialize(token = "X")
    @token = token
  end
end

 # def token=(token)
  #  if token == "O"
    #  raise NoMethodError
   # end
  #end
